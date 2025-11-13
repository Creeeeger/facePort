.class public Lcom/samsung/android/settings/notification/RadioPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mChecked:Z

.field public volatile mPreventRadioButtonCallbacks:Z

.field public mRadioButton:Landroid/widget/RadioButton;

.field public final mRadioChangeListener:Lcom/samsung/android/settings/notification/RadioPreference$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040055

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/samsung/android/settings/notification/RadioPreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/notification/RadioPreference$1;-><init>(Lcom/samsung/android/settings/notification/RadioPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioChangeListener:Lcom/samsung/android/settings/notification/RadioPreference$1;

    const p1, 0x7f0d0951

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a1094

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioChangeListener:Lcom/samsung/android/settings/notification/RadioPreference$1;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    iput-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    :cond_0
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onClick()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz v1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    :goto_0
    return-void
.end method
