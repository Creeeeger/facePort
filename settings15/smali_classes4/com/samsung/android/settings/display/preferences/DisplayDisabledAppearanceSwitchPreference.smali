.class public Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;
.super Landroidx/preference/SecSwitchPreferenceScreen;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsEnabled:Z

.field public mMsg:Ljava/lang/String;

.field public mSummary:Landroid/widget/TextView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/SecSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/SecSwitchPreferenceScreen;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mTitle:Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mTitle:Landroid/widget/TextView;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mSummary:Landroid/widget/TextView;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mSummary:Landroid/widget/TextView;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x1020040

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method public final onClick()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
