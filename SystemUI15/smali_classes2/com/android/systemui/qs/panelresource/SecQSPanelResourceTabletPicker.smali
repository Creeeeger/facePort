.class public final Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;
.super Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;-><init>(Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;)V

    iput-object p1, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

    return-void
.end method


# virtual methods
.method public final getAlbumArtWidth(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;->getPanelWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getAvailableDisplayHeight(Landroid/content/Context;)I
    .locals 3

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->navBarHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->navBarHeightLandscape:I

    :goto_0
    sub-int/2addr v1, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07148f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method public final getBottomBarTileList(ILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f131040

    invoke-static {p0, p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->string(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBrightnessTileLayoutBetweenMargin(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;->getPanelWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f4c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final getButtonsWidth(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;->getPanelWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f071054

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public final getDateButtonContainerPadding(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getDateButtonContainerTopMargin(Landroid/content/Context;)I
    .locals 1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f07105d

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->float(ILandroid/content/Context;)F

    move-result p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final getDetailContentViewMaxHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070d42

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getDetailContentViewMinHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070d45

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getDetailSidePadding(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070d70

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getLabelHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07108c

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getMediaDeviceBarTouchAreaBetweenPadding(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070ea7

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getMediaPlayerCollapsedHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0710be

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getNotificationBottomPadding(Landroid/content/Context;)I
    .locals 1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f07103c

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->float(ILandroid/content/Context;)F

    move-result p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final getNotificationSidePadding(Landroid/content/Context;Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPanelHeight(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result p0

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p0, p0

    const v0, 0x7f070e4a

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    const v0, 0x7f0710ee

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result p0

    :cond_0
    return p0
.end method

.method public final getPanelSidePadding(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPanelStartEndPadding(ILandroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPanelWidth(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070d1b

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getQQSPanelSidePadding(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;->getQuickSettingExtraSidePadding(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getQSGuideContainerMargin(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070dcb

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getQSGuideImageHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070dcc

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getQSGuideImageWidth(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070dcd

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getQSGuideWidth(Landroid/content/Context;Z)I
    .locals 0

    if-eqz p2, :cond_0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070dce

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070dcf

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getQsTileColumn(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

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
    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0b00f4

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->int(ILandroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getQsTileMinNum(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0b00df

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->int(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getQuickQsTileNum(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0b00eb

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->int(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getQuickSettingExtraSidePadding(Landroid/content/Context;)I
    .locals 4

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

    return p0
.end method

.method public final getShadeHeaderHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070626

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getShadeHeaderSidePadding(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070629

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getShadeHeaderWidth(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getTileExpandedHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f071723

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getTileExpandedSidePadding(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07171c

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getTileExpandedWidth(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f071727

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceTabletPicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

    iget-object v0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->settingsHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->tileExpandedWidthRatio:F

    mul-float/2addr p1, p0

    float-to-int p1, p1

    :cond_0
    return p1
.end method

.method public final getTopBarTileList(ILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f1310f8

    invoke-static {p0, p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->string(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
