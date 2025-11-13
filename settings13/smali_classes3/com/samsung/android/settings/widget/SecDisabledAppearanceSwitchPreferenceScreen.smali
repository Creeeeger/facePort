.class public Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;
.super Landroidx/preference/SecSwitchPreferenceScreen;
.source "SecDisabledAppearanceSwitchPreferenceScreen.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mEnabledAppearance:Z

.field private mMsg:Ljava/lang/String;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mEnabledAppearance:Z

    const-string p2, ""

    .line 19
    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mMsg:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 30
    invoke-super {p0, p1}, Landroidx/preference/SeslSwitchPreferenceScreen;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 31
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mEnabledAppearance:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mTitle:Landroid/widget/TextView;

    .line 33
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mSummary:Landroid/widget/TextView;

    .line 34
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 35
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 36
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020040

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 41
    :cond_1
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->switch_widget:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mEnabledAppearance:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-super {p0}, Landroidx/preference/SeslSwitchPreferenceScreen;->onClick()V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecDisabledAppearanceSwitchPreferenceScreen;->mMsg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
