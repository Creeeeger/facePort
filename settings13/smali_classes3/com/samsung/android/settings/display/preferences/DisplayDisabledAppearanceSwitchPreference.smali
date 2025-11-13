.class public Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;
.super Landroidx/preference/SecSwitchPreferenceScreen;
.source "DisplayDisabledAppearanceSwitchPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field protected mIsEnabled:Z

.field private mMsg:Ljava/lang/String;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 23
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    const-string p2, ""

    .line 27
    iput-object p2, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    const/4 p2, 0x0

    .line 28
    iput-object p2, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mIntent:Landroid/content/Intent;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Landroidx/preference/SeslSwitchPreferenceScreen;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 40
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mTitle:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 42
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mTitle:Landroid/widget/TextView;

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mSummary:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 45
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mSummary:Landroid/widget/TextView;

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 48
    iget-object p0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 49
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x1020040

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    :cond_0
    invoke-super {p0}, Landroidx/preference/SeslSwitchPreferenceScreen;->onClick()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnabledAppearance(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    .line 58
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setToastMsg(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    return-void
.end method
