.class public Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;
.super Landroidx/preference/Preference;
.source "LockScreenNotificationContentPreference.java"


# instance fields
.field private mEnabled:Z

.field private mHideContentBtn:Landroid/widget/RadioButton;

.field private mHideContentContainer:Landroid/widget/LinearLayout;

.field private mHideContentSummary:Landroid/widget/TextView;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSettingsButtonClickListener:Landroid/view/View$OnClickListener;

.field private mShowContentBtn:Landroid/widget/RadioButton;

.field private mShowContentContainer:Landroid/widget/LinearLayout;

.field private mShowContentSettingsBtn:Landroid/view/View;

.field private mShowContentSettingsBtnBg:Landroid/graphics/drawable/Drawable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHideContentBtn(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mHideContentBtn:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowContentBtn(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentBtn:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetAllowPrivateSettings(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->setAllowPrivateSettings(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSettingsBtnEnabled(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->setSettingsBtnEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 52
    new-instance p1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$2;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 70
    new-instance p1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference$3;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mSettingsButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getAllowPrivateSettings()I
    .locals 3

    .line 153
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_allow_private_notifications"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private initRadioButtonState()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentBtn:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mHideContentBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->getAllowPrivateSettings()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mHideContentBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private setAllowPrivateSettings(I)V
    .locals 2

    .line 146
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_allow_private_notifications"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setSettingsBtnEnabled(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->getAllowPrivateSettings()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mSettingsButtonClickListener:Landroid/view/View$OnClickListener;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentSettingsBtnBg:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateHideContentSummary()V
    .locals 1

    .line 138
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->COVERSCREEN_SETTINGS:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mHideContentSummary:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mHideContentSummary:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 91
    sget v0, Lcom/android/settings/R$id;->show_content_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentContainer:Landroid/widget/LinearLayout;

    .line 92
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mHideContentContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 96
    sget v0, Lcom/android/settings/R$id;->hide_content_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mHideContentContainer:Landroid/widget/LinearLayout;

    .line 97
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentBtn:Landroid/widget/RadioButton;

    if-nez v0, :cond_2

    .line 101
    sget v0, Lcom/android/settings/R$id;->show_content_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentBtn:Landroid/widget/RadioButton;

    .line 102
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    if-nez v0, :cond_3

    .line 106
    sget v0, Lcom/android/settings/R$id;->show_content_settings_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    .line 107
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mSettingsButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentSettingsBtnBg:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mEnabled:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->setSettingsBtnEnabled(Z)V

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mHideContentBtn:Landroid/widget/RadioButton;

    if-nez v0, :cond_4

    .line 113
    sget v0, Lcom/android/settings/R$id;->hide_content_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mHideContentBtn:Landroid/widget/RadioButton;

    .line 114
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mHideContentSummary:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 118
    sget v0, Lcom/android/settings/R$id;->hide_content_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mHideContentSummary:Landroid/widget/TextView;

    .line 121
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->initRadioButtonState()V

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->updateHideContentSummary()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 169
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 170
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mEnabled:Z

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationContentPreference;->setSettingsBtnEnabled(Z)V

    :cond_0
    return-void
.end method
