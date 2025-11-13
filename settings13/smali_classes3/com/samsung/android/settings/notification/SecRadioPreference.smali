.class public Lcom/samsung/android/settings/notification/SecRadioPreference;
.super Landroidx/preference/SecPreference;
.source "SecRadioPreference.java"


# instance fields
.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIcon:Landroid/widget/ImageView;

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSummary:Landroid/widget/TextView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Kg35cNy5_AEp4v5auANA2mkJLas(Lcom/samsung/android/settings/notification/SecRadioPreference;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecRadioPreference;->lambda$new$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/SecRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 79
    sget v0, Lcom/android/settings/R$attr;->apnPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/notification/SecRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mEnabled:Z

    .line 60
    new-instance p2, Lcom/samsung/android/settings/notification/SecRadioPreference$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/notification/SecRadioPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/notification/SecRadioPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 138
    new-instance p2, Lcom/samsung/android/settings/notification/SecRadioPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/notification/SecRadioPreference$1;-><init>(Lcom/samsung/android/settings/notification/SecRadioPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 66
    sget p2, Lcom/android/settings/R$layout;->sec_preference_radio_with_icon_for_notification:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRadioPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/SecRadioPreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mChecked:Z

    if-eq v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 160
    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mChecked:Z

    .line 161
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz v0, :cond_2

    .line 163
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 96
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 97
    sget v0, Lcom/android/settings/R$id;->notification_radio_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mPreventRadioButtonCallbacks:Z

    .line 100
    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x0

    .line 101
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mPreventRadioButtonCallbacks:Z

    .line 103
    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 105
    sget v2, Lcom/android/settings/R$id;->notification_radio_summary:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mSummary:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mSummary:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mChecked:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 115
    :cond_1
    sget v0, Lcom/android/settings/R$id;->notification_radio_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mText:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mText:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    sget v0, Lcom/android/settings/R$id;->notification_radio_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mIcon:Landroid/widget/ImageView;

    .line 121
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mIcon:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mEnabled:Z

    if-eqz p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const p0, 0x3f19999a    # 0.6f

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/SecRadioPreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 175
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mChecked:Z

    .line 176
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setIconEnabled(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mEnabled:Z

    .line 197
    iget-object p0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 199
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    .line 201
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRadioColor(Z)V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mContext:Landroid/content/Context;

    const v1, 0x101042a

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mContext:Landroid/content/Context;

    const v2, 0x1010036

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 210
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 212
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mText:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 213
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public setSummaryVisibility(Z)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mSummary:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 191
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
