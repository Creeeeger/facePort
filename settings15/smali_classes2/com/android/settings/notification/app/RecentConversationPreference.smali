.class public Lcom/android/settings/notification/app/RecentConversationPreference;
.super Lcom/android/settingslib/widget/TwoTargetPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mClearView:Landroid/view/View;


# virtual methods
.method public getClearId()I
    .locals 0

    const p0, 0x7f0a0381

    return p0
.end method

.method public getClearView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/RecentConversationPreference;->mClearView:Landroid/view/View;

    return-object p0
.end method

.method public final getSecondTargetResId()I
    .locals 0

    const p0, 0x7f0d053a

    return p0
.end method

.method public hasClearListener()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/app/RecentConversationPreference;->getClearId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/RecentConversationPreference;->mClearView:Landroid/view/View;

    const/4 p0, 0x0

    throw p0
.end method
