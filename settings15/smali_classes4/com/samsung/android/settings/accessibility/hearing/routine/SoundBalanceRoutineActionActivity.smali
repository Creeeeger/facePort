.class public Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;
.super Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public connectedAudioSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

.field public phoneSpeakersSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

.field public trackingTouch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->trackingTouch:Z

    return-void
.end method


# virtual methods
.method public final buildContentView()Landroid/view/View;
    .locals 9

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0b48

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v1

    const v2, 0x7f0a03eb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "master_balance"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "connected_audio"

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const v4, 0x7f0a0eb2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f141853

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0a0eb1

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->connectedAudioSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    const/16 v7, 0xc8

    const/high16 v8, 0x42c80000    # 100.0f

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    mul-float/2addr v3, v8

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v7}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->setSeekBarState(Landroidx/appcompat/widget/SeslSeekBar;I)V

    :goto_0
    const v2, 0x7f0a0b51

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportStereoSpeaker()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 p0, 0x8

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f142cea

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "speaker_balance"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "phone_speakers"

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->phoneSpeakersSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    mul-float/2addr v1, v8

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v2, v7}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->setSeekBarState(Landroidx/appcompat/widget/SeslSeekBar;I)V

    :goto_1
    return-object v0
.end method

.method public final getTitleResId()I
    .locals 0

    const p0, 0x7f142cec

    return p0
.end method

.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    iget-boolean p3, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->trackingTouch:Z

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->applySoundBalanceCenterPositionThreshold(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->setSeekBarState(Landroidx/appcompat/widget/SeslSeekBar;I)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->connectedAudioSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    if-eqz v0, :cond_0

    const-string v0, "connected_audio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->connectedAudioSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->connectedAudioSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->setSeekBarState(Landroidx/appcompat/widget/SeslSeekBar;I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportStereoSpeaker()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->phoneSpeakersSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "phone_speakers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->phoneSpeakersSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->phoneSpeakersSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->setSeekBarState(Landroidx/appcompat/widget/SeslSeekBar;I)V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->connectedAudioSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const-string v1, "connected_audio"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportStereoSpeaker()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->phoneSpeakersSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const-string/jumbo v1, "phone_speakers"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->trackingTouch:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->applySoundBalanceCenterPositionThreshold(Landroidx/appcompat/widget/SeslSeekBar;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->trackingTouch:Z

    return-void
.end method

.method public final sendParameterValues()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->connectedAudioSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "connected_audio"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportStereoSpeaker()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/routine/SoundBalanceRoutineActionActivity;->phoneSpeakersSeekBar:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    add-int/lit8 p0, p0, -0x64

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v1, "phone_speakers"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_1
    return-object v0
.end method

.method public final setSeekBarState(Landroidx/appcompat/widget/SeslSeekBar;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    if-eq p2, v0, :cond_1

    const p2, 0x7f060a62

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setTickMarkTintList(Landroid/content/res/ColorStateList;)V

    const p2, 0x7f060a61

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0609a5

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setTickMarkTintList(Landroid/content/res/ColorStateList;)V

    const p2, 0x7f06000e

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method
