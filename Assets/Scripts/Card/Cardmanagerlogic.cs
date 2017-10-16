using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;
using UnityEngine.UI;

public class CardManagerLogic : MonoBehaviour
{
    const string horisontalAxisName = "Horizontal";
    const string selectButtonName = "Fire1";

    [SerializeField] GameObject m_cardTemplate;
    [SerializeField] GameObject m_bossTextTemplate;
    [SerializeField] float m_maxCardDelta = 400f;
    [SerializeField] float m_maxCardWidth = 1500f;
    [SerializeField] float m_cardOffset = 0f;
    [SerializeField] float m_maxSentensesWidth = 500f;
    [SerializeField] float m_maxSentensesHeight = 500f;
    [SerializeField] float m_sentensesOffset = 500f;

    List<CardLogic> m_cards = new List<CardLogic>();
    List<BossTextLogic> m_bossText = new List<BossTextLogic>();
    Text m_descriptionComp = null;

    int m_hoveredCardIndex = 0;

    SubscriberList m_subscriberList = new SubscriberList();

    private void Awake()
    {
        m_descriptionComp = transform.Find("Description").GetComponent<Text>();

        m_subscriberList.Add(new Event<InputEvent>.Subscriber(onInputEvent));
        m_subscriberList.Add(new Event<FillCardsEvent>.Subscriber(onFillCards));
        m_subscriberList.Add(new Event<ShowBossSentensesEvent>.Subscriber(onBossSentensesShow));
        m_subscriberList.Subscribe();
    }

    private void OnDestroy()
    {
        m_subscriberList.Unsubscribe();
    }

    private void Start()
    {
        showCards(G.sys.inventory);
        showSentenses(new List<string>
        {
            "1, 2, 3 ...",
            "Il etait une fois",
            "Un fruit jaune et long",
            "Le president des etats unis",
            "Un doux kiwi"
        });
    }

    void showCards(List<CardData> cards)
    {
        foreach (var c in m_cards)
            Destroy(c.gameObject);
        m_cards.Clear();

        var delta = Mathf.Min(cards.Count <= 1 ? 0 : m_maxCardWidth / (cards.Count - 1), m_maxCardDelta);
        var offset = - (cards.Count - 1) * delta / 2;

        for (int i = 0; i < cards.Count; i++)
        {
            var card = GameObject.Instantiate(m_cardTemplate, Vector3.Scale(new Vector3(offset + delta * i, m_cardOffset, 0), transform.lossyScale) + transform.position, Quaternion.identity, transform);
            var cardlogic = card.GetComponent<CardLogic>();
            if(cardlogic == null)
            {
                Destroy(card);
                Debug.LogError("The card don't have a CardLogic !");
                continue;
            }
            cardlogic.text = cards[i].name;
            cardlogic.description = cards[i].description;
            m_cards.Add(cardlogic);
        }

        hoverCard(0);
    }

    void showSentenses(List<string> sentenses)
    {
        foreach (var s in m_bossText)
            Destroy(s.gameObject);
        m_bossText.Clear();

        var delta = sentenses.Count <= 1 ? 0 : m_maxSentensesWidth / (sentenses.Count - 1);
        var offset = -(sentenses.Count - 1) * delta / 2;

        for (int i = 0; i < sentenses.Count; i++)
        {
            var posX = offset + delta * i;
            var posY = heightFromIndex(i, sentenses.Count);

            var sentense = GameObject.Instantiate(m_bossTextTemplate, Vector3.Scale(new Vector3(posX, posY + m_sentensesOffset, 0), transform.lossyScale) + transform.position, Quaternion.identity, transform);
            var textLogic = sentense.GetComponent<BossTextLogic>();
            if (textLogic == null)
            {
                Destroy(sentense);
                Debug.LogError("The boss sentense don't have a BossTextLogic !");
                continue;
            }
            textLogic.text = sentenses[i];
            m_bossText.Add(textLogic);
        }
    }

    void hoverCard(int index)
    {
        if (index < 0 || index >= m_cards.Count)
            return;

        foreach (var c in m_cards)
            c.hovered = false;
        m_cards[index].hovered = true;
        m_descriptionComp.text = m_cards[index].description;
        m_hoveredCardIndex = index;
    }

    void onInputEvent(InputEvent e)
    {
        if (e.inputType != InputEvent.InputType.PRESSED || e.inputName != horisontalAxisName)
            return;

        hoverCard(Mathf.Clamp(m_hoveredCardIndex + e.inputSign, 0, m_cards.Count - 1));
    }

    void onFillCards(FillCardsEvent e)
    {
        showCards(e.cards);
    }

    void onBossSentensesShow(ShowBossSentensesEvent e)
    {
        showSentenses(e.sentenses);
    }

    private float heightFromIndex(int value, int max)
    {
        bool maxpair = max % 2 == 0;
        bool valueMoreThanHalfMax = false;
        value++;
        if (maxpair)
            max++;

        int halfMax = max / 2 + 1;

        if (value > halfMax)
        {
            valueMoreThanHalfMax = true;
            value = max - value;
        }

        float valueNormalized = 1 - (value / halfMax);
        if (!maxpair && valueMoreThanHalfMax)
            valueNormalized -= 1f / (2 * max);

        float sign = (value % 2) == 0 ? -1f : 1f;

        return sign * valueNormalized * m_maxSentensesHeight / 2;
    }
}