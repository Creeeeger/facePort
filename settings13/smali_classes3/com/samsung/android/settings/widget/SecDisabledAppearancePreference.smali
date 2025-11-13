.class public Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;
.super Landroidx/preference/SecPreference;
.source "SecDisabledAppearancePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mIsEnabled:Z

.field private mMsg:Ljava/lang/String;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mIsEnabled:Z

    const-string p2, ""

    .line 17
    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isEnabledAppearance()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mIsEnabled:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 30
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mTitle:Landroid/widget/TextView;

    .line 32
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mSummary:Landroid/widget/TextView;

    .line 34
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 35
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 53
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabledAppearance(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mIsEnabled:Z

    .line 40
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setToastMsg(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    return-void
.end method
