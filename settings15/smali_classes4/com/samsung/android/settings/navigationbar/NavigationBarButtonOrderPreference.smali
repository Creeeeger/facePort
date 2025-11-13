.class public Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mEnabled:Z

.field public mNormalMode:Landroid/widget/RadioButton;

.field public mNormalModeContainer:Landroid/widget/LinearLayout;

.field public mNormalModeImg:Landroid/widget/ImageView;

.field public final mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$$ExternalSyntheticLambda0;

.field public final mOnClickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;

.field public mReverseMode:Landroid/widget/RadioButton;

.field public mReverseModeContainer:Landroid/widget/LinearLayout;

.field public mReverseModeImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mEnabled:Z

    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;

    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final buttonOrderPreferenceEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "button_order"

    const-string v2, "grayout"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_4
    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_key_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    const v1, 0x7f0a0a94

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    const v1, 0x7f0a0cad

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    if-nez v1, :cond_2

    const v1, 0x7f0a0a93

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    if-nez v1, :cond_3

    const v1, 0x7f0a0cac

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    const v1, 0x7f0a0a95

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    if-nez v1, :cond_5

    const v1, 0x7f0a0cae

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    move v3, v1

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    if-ne v0, v1, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "display_night_theme"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_9

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    const v0, 0x7f080cc1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    const v0, 0x7f080cc3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    const v0, 0x7f080cc0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    const v0, 0x7f080cc2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    const v0, 0x7f080cc5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    const v0, 0x7f080cc7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    const v0, 0x7f080cc4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    const v0, 0x7f080cc6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->buttonOrderPreferenceEnabled(Z)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->buttonOrderPreferenceEnabled(Z)V

    return-void
.end method
