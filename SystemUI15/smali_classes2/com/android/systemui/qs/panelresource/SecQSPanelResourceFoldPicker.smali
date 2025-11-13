.class public final Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;
.super Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;-><init>(Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;)V

    iput-object p1, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

    return-void
.end method

.method public static getFoldPanelPadding(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-float v0, v0

    const v1, 0x7f070e4f

    invoke-static {p0, v1, v0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const v1, 0x3f0f4880    # 0.5597f

    mul-float/2addr v0, v1

    :cond_0
    sub-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    :goto_0
    float-to-int p0, p0

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    const v1, 0x7f070bb8

    invoke-static {p0, v1, v0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method


# virtual methods
.method public final getBrightnessTileLayoutBetweenMargin(Landroid/content/Context;)I
    .locals 1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070f4b

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->float(ILandroid/content/Context;)F

    move-result p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final getButtonsWidth(Landroid/content/Context;)I
    .locals 1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070d24

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->float(ILandroid/content/Context;)F

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f070d23

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->float(ILandroid/content/Context;)F

    move-result v0

    :goto_0
    mul-float/2addr p0, v0

    float-to-int p0, p0

    const v0, 0x7f071054

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getDateButtonContainerPadding(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070d18

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final getDetailContentViewMaxHeight(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070d41

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070d40

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getDetailSidePadding(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;->getPanelWidth(Landroid/content/Context;)I

    move-result p0

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070d6e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDetailSidePadding(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getLabelHeight(Landroid/content/Context;)I
    .locals 2

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semIsFitToActiveDisplay()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    int-to-float p0, p0

    const v0, 0x7f070ddd

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-double v0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07108a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_2

    :cond_2
    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ddf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_3

    :cond_3
    int-to-float p0, p0

    const v0, 0x7f070dde

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->float(ILandroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07108b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-int p0, p0

    :goto_3
    return p0
.end method

.method public final getMediaDeviceBarTouchAreaBetweenPadding(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070ea6

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070ea5

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getNotificationSidePadding(Landroid/content/Context;Z)I
    .locals 1

    sget-object p2, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    int-to-float p0, p2

    const v0, 0x7f070e4e

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    goto :goto_0

    :cond_0
    int-to-float p0, p2

    const v0, 0x7f070e4f

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-float p2, p2

    const v0, 0x7f070d1a

    invoke-static {p1, v0, p2}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    int-to-float p1, p1

    const p2, 0x3f0f4880    # 0.5597f

    mul-float/2addr p1, p2

    goto :goto_1

    :cond_2
    int-to-float p1, p1

    :goto_1
    sub-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    :goto_2
    float-to-int p0, p0

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    int-to-float p0, p2

    const p2, 0x7f070bb7

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;->getQuickSettingExtraSidePadding(Landroid/content/Context;)I

    move-result p0

    :goto_3
    return p0
.end method

.method public final getPanelSidePadding(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;->getPanelStartEndPadding(ILandroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getPanelStartEndPadding(ILandroid/content/Context;)I
    .locals 1

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070d18

    invoke-static {v0, p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->float(ILandroid/content/Context;)F

    move-result p2

    mul-float/2addr p2, p0

    float-to-int p0, p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;->getFoldPanelPadding(Landroid/content/Context;)I

    move-result p0

    :goto_0
    sget-object p2, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final getPanelWidth(Landroid/content/Context;)I
    .locals 3

    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    int-to-float p0, v0

    const v0, 0x7f070e50

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    :goto_0
    float-to-int v0, p0

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;->getQuickSettingExtraSidePadding(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    if-eqz v1, :cond_2

    int-to-float p1, v0

    const v0, 0x3f333333    # 0.7f

    :goto_1
    mul-float/2addr p1, v0

    goto :goto_2

    :cond_2
    int-to-float p1, v0

    const v0, 0x3f4f4880    # 0.8097f

    goto :goto_1

    :goto_2
    float-to-int p1, p1

    add-int v0, p0, p1

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    int-to-float p0, v0

    const p1, 0x3f3c28f6    # 0.735f

    mul-float/2addr p0, p1

    goto :goto_0

    :goto_3
    return v0
.end method

.method public final getQQSPanelSidePadding(Landroid/content/Context;)I
    .locals 2

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float v0, p0

    const v1, 0x7f070e4e

    invoke-static {p1, v1, v0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result v0

    goto :goto_0

    :cond_0
    int-to-float v0, p0

    const v1, 0x7f070e4f

    invoke-static {p1, v1, v0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result v0

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-float p0, p0

    const v1, 0x7f070d1a

    invoke-static {p1, v1, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3f0f4880    # 0.5597f

    mul-float/2addr p0, p1

    :goto_1
    sub-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    const v0, 0x7f070bb8

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    :goto_2
    return p0
.end method

.method public final getQQSPanelStartEndPadding(ILandroid/content/Context;)I
    .locals 2

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070d18

    invoke-static {v0, p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->float(ILandroid/content/Context;)F

    move-result p2

    mul-float/2addr p2, p0

    float-to-int p0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;->getNotificationSidePadding(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;->getFoldPanelPadding(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p0, p2

    :goto_0
    sget-object p2, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    move v1, p0

    :cond_1
    return v1
.end method

.method public final getQSGuideContainerMargin(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070dc1

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    :goto_0
    float-to-int p0, p0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070dc3

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public final getQSGuideImageHeight(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070dc7

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    :goto_0
    float-to-int p0, p0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070dc4

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public final getQSGuideImageWidth(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070dca

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    :goto_0
    float-to-int p0, p0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070dc5

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public final getQSGuideWidth(Landroid/content/Context;Z)I
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const p2, 0x7f070dd1

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    :goto_0
    float-to-int p0, p0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const p2, 0x7f070dc6

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public final getQsTileColumn(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

    iget-boolean p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->isEmergencyMode:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0b00f3

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->int(ILandroid/content/Context;)I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0b00f2

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->int(ILandroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0b00f1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->int(ILandroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getQuickQsTileNum(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0b00ea

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->int(ILandroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0b00e9

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->int(ILandroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getQuickSettingExtraSidePadding(Landroid/content/Context;)I
    .locals 4

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0710f3

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    int-to-double p0, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const v2, 0x3edc28f6    # 0.43f

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    float-to-double v2, v2

    sub-double/2addr v0, v2

    mul-double/2addr v0, p0

    double-to-int p0, v0

    :goto_0
    return p0
.end method

.method public final getShadeHeaderHeight(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070624

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070625

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getShadeHeaderSidePadding(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isPortrait(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070d18

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070629

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getShadeHeaderWidth(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;->getPanelWidth(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getTileExpandedSidePadding(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07171b

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07171a

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getTileExpandedWidth(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f071726

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f071725

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceFoldPicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

    iget-object v0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->settingsHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->tileExpandedWidthRatio:F

    mul-float/2addr p1, p0

    float-to-int p1, p1

    :cond_1
    return p1
.end method

.method public final getTileLabelStartMargin(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07062f

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070630

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method
