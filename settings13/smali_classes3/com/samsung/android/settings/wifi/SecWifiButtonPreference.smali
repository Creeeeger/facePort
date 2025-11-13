.class public abstract Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;
.super Landroidx/preference/Preference;
.source "SecWifiButtonPreference.java"


# instance fields
.field protected mButton:Landroid/widget/LinearLayout;

.field protected mButtonText:Ljava/lang/String;

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mProgress:I

.field protected mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field protected mProgressVisible:Z

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected initPreference(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 82
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 83
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 84
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 86
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->shared_password_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButton:Landroid/widget/LinearLayout;

    .line 87
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    sget v0, Lcom/android/settings/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    .line 97
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressVisible:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 98
    iget v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgress:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressVisible:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setAlpha(Z)V

    return-void
.end method

.method protected setAlpha(Z)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButton:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 110
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method protected setAlphaWithText(Z)V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 116
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mButtonText:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setProgressVisibility(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressVisible:Z

    .line 69
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
