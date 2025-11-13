.class public final Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final subscriptionIds:[Ljava/lang/Integer;

.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I[Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->subscriptionIds:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object p2, p2, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const p3, 0x7f0d0914

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object p3, p3, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mActiveSubscriptionList:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->subscriptionIds:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->subscriptionIds:[Ljava/lang/Integer;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0a74

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getSimName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0a71

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0a70

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "telephony_subscription_service"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->nfcPreferredSimId:I

    const/4 v2, -0x2

    const/4 v4, 0x1

    if-ne p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    if-ne p0, v2, :cond_3

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    xor-int/lit8 v3, p0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p3

    if-ne p3, p0, :cond_4

    move v3, v4

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    return-object p2
.end method
