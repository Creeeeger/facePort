.class public Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
.super Landroidx/preference/SecPreference;
.source "DisplayDisabledAppearancePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIntent:Landroid/content/Intent;

.field private mIsChecked:Z

.field protected mIsEnabled:Z

.field private mMsg:Ljava/lang/String;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    const-string p2, ""

    .line 20
    iput-object p2, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    const/4 p2, 0x0

    .line 21
    iput-object p2, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIntent:Landroid/content/Intent;

    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsChecked:Z

    .line 29
    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isEnabledAppearance()Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 34
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 36
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mTitle:Landroid/widget/TextView;

    .line 38
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mSummary:Landroid/widget/TextView;

    .line 40
    iget-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 41
    iget-object p0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method protected onClick()V
    .locals 4

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    goto :goto_0

    .line 82
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsChecked:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference$1;-><init>(Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;)V

    .line 86
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mDialog:Landroid/app/AlertDialog;

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setEnabledAppearance(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    .line 54
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setToastMsg(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public setToastMsg(Ljava/lang/String;Z)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    .line 63
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsChecked:Z

    return-void
.end method
