.class public Lcom/samsung/android/settings/notification/RadioPreference;
.super Landroidx/preference/SecPreference;
.source "RadioPreference.java"


# instance fields
.field private mChecked:Z

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$monRadioButtonClicked(Lcom/samsung/android/settings/notification/RadioPreference;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/RadioPreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    sget v0, Lcom/android/settings/R$attr;->apnPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance p1, Lcom/samsung/android/settings/notification/RadioPreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/notification/RadioPreference$1;-><init>(Lcom/samsung/android/settings/notification/RadioPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 114
    new-instance p1, Lcom/samsung/android/settings/notification/RadioPreference$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/notification/RadioPreference$2;-><init>(Lcom/samsung/android/settings/notification/RadioPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 62
    sget p1, Lcom/android/settings/R$layout;->sec_preference_radio_with_icon:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    if-eq v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 137
    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz v0, :cond_2

    .line 140
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 83
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 84
    sget v0, Lcom/android/settings/R$id;->tts_engine_radiobutton:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 85
    iget-object v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v1, 0x1

    .line 87
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    .line 88
    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    .line 91
    iput-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 93
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    :cond_0
    const v0, 0x1020016

    .line 99
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    invoke-static {v0}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const v0, 0x1020006

    .line 102
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 103
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 106
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 109
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 152
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    .line 153
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    :goto_1
    return-void
.end method
