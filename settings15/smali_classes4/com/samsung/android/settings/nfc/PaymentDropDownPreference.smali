.class public Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActiveSubscriptionList:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public mHasActiveEmbeddedSim:Z

.field public mListAdapter:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;

.field public final mListPopup:Landroidx/appcompat/widget/ListPopupWindow;

.field public nfcPreferredSimId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x2

    iput p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->nfcPreferredSimId:I

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mActiveSubscriptionList:Ljava/util/HashMap;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mHasActiveEmbeddedSim:Z

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    new-instance p2, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/preference/Preference;->setPersistent()V

    new-instance p1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public final dismissListIfShowing()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final getSimName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "select_name_2"

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "select_name_1"

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final initSubscriptionDetails()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setNfcPreferredSimId()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mActiveSubscriptionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "PaymentDropDownPreference"

    const-string v3, "Disabling nfc payment sim menu : no active subscription"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->nfcPreferredSimId:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mActiveSubscriptionList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    :goto_0
    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {p0, v2}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->nfcPreferredSimId:I

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mActiveSubscriptionList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getSimName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {p0, v0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :goto_2
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@layout/sec_nfc_euicc_dropdown_list_view_row"

    const-string v6, "layout"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mActiveSubscriptionList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-interface {v4, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I[Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListAdapter:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    iput-object v1, v0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz p0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final setNfcPreferredSimId()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nfc_preferred_sim_index"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->nfcPreferredSimId:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "PaymentDropDownPreference"

    const-string/jumbo v1, "preferred sim setting not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->nfcPreferredSimId:I

    :goto_0
    return-void
.end method
