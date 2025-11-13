.class public final Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayPowerRequest"
.end annotation


# static fields
.field public static final greylist-max-o POLICY_BRIGHT:I = 0x3

.field public static final greylist-max-o POLICY_DIM:I = 0x2

.field public static final greylist-max-o POLICY_DOZE:I = 0x1

.field public static final greylist-max-o POLICY_OFF:I = 0x0

.field public static final greylist-max-o POLICY_VR:I = 0x4


# instance fields
.field public blacklist autoBrightnessLowerLimit:F

.field public blacklist autoBrightnessUpperLimit:F

.field public blacklist batteryLevel:I

.field public blacklist batteryLevelCritical:Z

.field public greylist-max-o blockScreenOn:Z

.field public greylist-max-o boostScreenBrightness:Z

.field public blacklist brightnessLimitByCover:I

.field public blacklist coverClosed:Z

.field public blacklist coverType:I

.field public blacklist dozeScreenBrightness:F

.field public greylist-max-o dozeScreenState:I

.field public blacklist dualScreenPolicy:I

.field public blacklist earlyWakeUp:Z

.field public blacklist forceLcdBacklightOffEnabled:Z

.field public blacklist forceSlowChange:Z

.field public blacklist hbmBlock:Z

.field public blacklist isOutdoorMode:Z

.field public blacklist isPowered:Z

.field public blacklist lastGoToSleepReason:I

.field public blacklist lastWakeUpReason:I

.field public blacklist lcdFlashMode:Z

.field public greylist-max-o lowPowerMode:Z

.field public blacklist mFTAMode:Z

.field public blacklist maxBrightness:F

.field public blacklist minBrightness:F

.field public greylist-max-o policy:I

.field public blacklist proximityNegativeDebounce:I

.field public blacklist proximityPositiveDebounce:I

.field public greylist-max-o screenAutoBrightnessAdjustmentOverride:F

.field public blacklist screenBrightnessOverride:F

.field public blacklist screenBrightnessScaleFactor:F

.field public greylist-max-o screenLowPowerBrightnessFactor:F

.field public greylist-max-o useAutoBrightness:Z

.field public greylist-max-o useProximitySensor:Z


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 3

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    .line 545
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    .line 547
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 548
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    .line 554
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 558
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    .line 559
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    .line 565
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    .line 569
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    .line 572
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    .line 573
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    .line 576
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    .line 577
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 578
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 579
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 589
    const/4 v1, 0x3

    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 590
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 591
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 592
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 593
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    .line 594
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 595
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    .line 596
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 597
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 598
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    .line 545
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    .line 547
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 548
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    .line 554
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 558
    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    .line 559
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    .line 565
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    .line 569
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    .line 572
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    .line 573
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    .line 576
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    .line 577
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 578
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 579
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 601
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 602
    return-void
.end method

.method private greylist-max-o floatEquals(FF)Z
    .locals 1
    .param p1, "f1"    # F
    .param p2, "f2"    # F

    .line 737
    cmpl-float v0, p1, p2

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static greylist-max-o policyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "policy"    # I

    .line 804
    packed-switch p0, :pswitch_data_0

    .line 816
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 814
    :pswitch_0
    const-string v0, "VR"

    return-object v0

    .line 812
    :pswitch_1
    const-string v0, "BRIGHT"

    return-object v0

    .line 810
    :pswitch_2
    const-string v0, "DIM"

    return-object v0

    .line 808
    :pswitch_3
    const-string v0, "DOZE"

    return-object v0

    .line 806
    :pswitch_4
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 1
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 613
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 614
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 615
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 616
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 617
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    .line 618
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 619
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    .line 620
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 621
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 622
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 623
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 626
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    .line 627
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    .line 628
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    .line 629
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 630
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    .line 634
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 638
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    .line 639
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    .line 643
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 644
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    .line 645
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    .line 648
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    .line 649
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    .line 650
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    .line 651
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 652
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 653
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 656
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    .line 657
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    .line 660
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    .line 662
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    .line 665
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    .line 666
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    .line 668
    return-void
.end method

.method public greylist-max-o equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 677
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 680
    invoke-direct {p0, v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    .line 683
    invoke-direct {p0, v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 690
    invoke-direct {p0, v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    .line 694
    invoke-direct {p0, v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    .line 695
    invoke-direct {p0, v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 697
    invoke-direct {p0, v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    .line 698
    invoke-direct {p0, v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 677
    :goto_0
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 672
    instance-of v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 673
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 672
    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isBrightOrDim()Z
    .locals 2

    .line 605
    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public greylist-max-o isVr()Z
    .locals 2

    .line 609
    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenAutoBrightnessAdjustmentOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenLowPowerBrightnessFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blockScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boostScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dozeScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dozeScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 758
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoBrightnessLowerLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoBrightnessUpperLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceSlowChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastGoToSleepReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proximityPositiveDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proximityNegativeDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brightnessLimitByCover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FTAMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batteryLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lcdFlashMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOutdoorMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenBrightnessScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceLcdBacklightOffEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batteryLevelCritical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPowered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hbmBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", earlyWakeUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dualScreenPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastWakeUpReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    return-object v0
.end method
