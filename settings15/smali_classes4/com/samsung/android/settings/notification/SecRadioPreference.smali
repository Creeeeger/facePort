.class public Lcom/samsung/android/settings/notification/SecRadioPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mChecked:Z

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mIcon:Landroid/widget/ImageView;

.field public volatile mPreventRadioButtonCallbacks:Z

.field public mRadioButton:Landroid/widget/RadioButton;

.field public mSummary:Landroid/widget/TextView;

.field public mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/SecRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040055

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/notification/SecRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mEnabled:Z

    const p2, 0x7f0d0952

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0aaa

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mPreventRadioButtonCallbacks:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mPreventRadioButtonCallbacks:Z

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    const v2, 0x7f0a0aac

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    :cond_1
    const v0, 0x7f0a0aae

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mText:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0aab

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

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

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final onClick()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mChecked:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mChecked:Z

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

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mChecked:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mChecked:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setIconEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mEnabled:Z

    iget-object p0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setRadioColor(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mContext:Landroid/content/Context;

    const v1, 0x101042a

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mContext:Landroid/content/Context;

    const v2, 0x1010036

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/SecRadioPreference;->mText:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method
