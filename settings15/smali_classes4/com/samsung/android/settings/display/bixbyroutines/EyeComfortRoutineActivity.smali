.class public Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

.field public static sEyeComfortInitialAdaptiveMode:I

.field public static sEyeComfortInitialScheduled:I

.field public static sEyeComfortInitialState:Z

.field public static sEyeComfortInitialType:I

.field public static sEyeComfortInitialValue:I


# instance fields
.field public mAdaptiveButton:Landroid/widget/RadioButton;

.field public mBlueLightFilterAdaptive:F

.field public mBlueLightFilterOpacity:F

.field public mBlueLightFilterScheduled:F

.field public mBlueLightFilterSwitch:F

.field public mBlueLightFilterType:F

.field public mContext:Landroid/content/Context;

.field public mCustomButton:Landroid/widget/RadioButton;

.field public final mEyeComfortColorTempObserver:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;

.field public mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public mLeftLabel:Landroid/widget/TextView;

.field public mOffButton:Landroid/widget/RadioButton;

.field public mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field public mRadioGroup:Landroid/widget/RadioGroup;

.field public mRightLabel:Landroid/widget/TextView;

.field public mSeekbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "blue_light_filter_opacity"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortColorTempObserver:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->sEyeComfortInitialState:Z

    const-string v2, "blue_light_filter"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_adaptive_mode"

    sget v2, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->sEyeComfortInitialAdaptiveMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_scheduled"

    sget v2, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->sEyeComfortInitialScheduled:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_type"

    sget v2, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->sEyeComfortInitialType:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter_opacity"

    sget v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->sEyeComfortInitialValue:I

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blue_light_filter_opacity"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->sEyeComfortInitialValue:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "blue_light_filter"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->sEyeComfortInitialState:Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "blue_light_filter_type"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->sEyeComfortInitialType:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v6

    xor-int/2addr v6, p1

    const-string v7, "blue_light_filter_scheduled"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->sEyeComfortInitialScheduled:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v6

    const-string v8, "blue_light_filter_adaptive_mode"

    invoke-static {v1, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->sEyeComfortInitialAdaptiveMode:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v9, "blue_light_filter_switch"

    invoke-static {v6, v1, v9}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterSwitch:F

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {v6, v1, v8}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterAdaptive:F

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {v9, v1, v7}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterScheduled:F

    goto :goto_1

    :cond_1
    iput v9, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterAdaptive:F

    iput v6, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterScheduled:F

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {v9, v1, v5}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterType:F

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object v6, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6, v1, v2}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterOpacity:F

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v6, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterSwitch:F

    float-to-int v6, v6

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterAdaptive:F

    float-to-int v4, v4

    invoke-static {v1, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterScheduled:F

    float-to-int v4, v4

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterType:F

    float-to-int v4, v4

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterOpacity:F

    float-to-int v4, v4

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterSwitch:F

    float-to-int v1, v1

    if-ne v1, p1, :cond_2

    move v1, p1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setEyeComfortState(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d08a7

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0609

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0a060a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mAdaptiveButton:Landroid/widget/RadioButton;

    const v2, 0x7f0a060b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mCustomButton:Landroid/widget/RadioButton;

    const v2, 0x7f0a060c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mOffButton:Landroid/widget/RadioButton;

    const v2, 0x7f0a0608

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mSeekbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a060d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const v2, 0x7f0a08ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mLeftLabel:Landroid/widget/TextView;

    const v2, 0x7f0a0cb8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mRightLabel:Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mAdaptiveButton:Landroid/widget/RadioButton;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mCustomButton:Landroid/widget/RadioButton;

    const v4, 0x7f142e1f

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(I)V

    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterSwitch:F

    float-to-int v2, v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mOffButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    :cond_4
    iget v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterScheduled:F

    float-to-int v2, v2

    if-ne v2, p1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mCustomButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mAdaptiveButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mCustomButton:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->setEyeComfortSeekbarContainer(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mRightLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterOpacity:F

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f14252e

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    monitor-enter v2

    :try_start_0
    iget v4, v2, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    add-int/2addr v4, p1

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget v3, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mBlueLightFilterOpacity:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v3, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$3;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f14238c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;I)V

    const v0, 0x7f140d53

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;I)V

    const v1, 0x7f1408bf

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance p1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$2;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    sget-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortColorTempObserver:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortColorTempObserver:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->BLUE_LIGHT_FILTER_OPACITY_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortColorTempObserver:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final setEyeComfortSeekbarContainer(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mSeekbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mEyeComfortSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mLeftLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mLeftLabel:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mRightLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mRightLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public final setEyeComfortState(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.bluelightfilter"

    const-string v2, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-static {v1, v2, v0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x19

    :goto_0
    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
