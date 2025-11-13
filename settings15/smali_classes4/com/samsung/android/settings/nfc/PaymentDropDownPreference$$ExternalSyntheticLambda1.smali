.class public final synthetic Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "PaymentDropDownPreference"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "onClick: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListAdapter:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;

    monitor-enter p2

    :try_start_0
    iget p3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->nfcPreferredSimId:I

    if-ne p1, p3, :cond_0

    const-string p1, "PaymentDropDownPreference"

    const-string p3, "dropping click event, selection same"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo p4, "nfc_preferred_sim_index"

    invoke-static {p3, p4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setNfcPreferredSimId()V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListAdapter:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    iget p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->nfcPreferredSimId:I

    const/4 p3, -0x2

    const/4 p4, 0x0

    if-ne p1, p3, :cond_1

    move-object p1, p4

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mActiveSubscriptionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->nfcPreferredSimId:I

    if-ne p1, p3, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mActiveSubscriptionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p4, p1

    check-cast p4, Landroid/telephony/SubscriptionInfo;

    :goto_1
    invoke-virtual {p0, p4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getSimName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void

    :goto_4
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
