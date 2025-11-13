.class public Landroid/preference/SemSwitchPreferenceScreen;
.super Landroid/preference/SwitchPreference;
.source "SemSwitchPreferenceScreen.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SemSwitchPreferenceScreen"

    const-string v4, "SwitchPreferenceScreen should get fragment property. Fragment property does not exist in SwitchPreferenceScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x140

    if-gt v3, v4, :cond_1

    iget v3, v1, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3f8ccccd    # 1.1f

    cmpl-float v3, v3, v4

    if-gez v3, :cond_2

    :cond_1
    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x19b

    if-ge v3, v4, :cond_3

    iget v3, v1, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    :cond_2
    const v3, 0x10901d4

    invoke-virtual {p0, v3}, Landroid/preference/SemSwitchPreferenceScreen;->setLayoutResource(I)V

    goto :goto_0

    :cond_3
    const v3, 0x10901d5

    invoke-virtual {p0, v3}, Landroid/preference/SemSwitchPreferenceScreen;->setLayoutResource(I)V

    :goto_0
    iget-boolean v3, p0, Landroid/preference/SemSwitchPreferenceScreen;->mIsDeviceDefaultDark:Z

    if-eqz v3, :cond_4

    const v3, 0x10901d7

    invoke-virtual {p0, v3}, Landroid/preference/SemSwitchPreferenceScreen;->setWidgetLayoutResource(I)V

    goto :goto_1

    :cond_4
    const v3, 0x10901d6

    invoke-virtual {p0, v3}, Landroid/preference/SemSwitchPreferenceScreen;->setWidgetLayoutResource(I)V

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/preference/SemSwitchPreferenceScreen;->setRecycleEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected whitelist onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->semSetHoverPopupType(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected whitelist onClick()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public blacklist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->isRTL()Z

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->hasRTL()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v8}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v7}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_7

    if-nez v2, :cond_7

    invoke-virtual {p0, v6}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v5}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :pswitch_1
    if-eqz v4, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {p0, v6}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v5}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    if-nez v4, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {p0, v8}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v7}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_6
    const/4 v3, 0x1

    :cond_7
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist performClick()V
    .locals 0

    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    return-void
.end method
