.class public Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

.field public cutoutHeight:I

.field public cutoutHeightLandscape:I

.field public navBarHeight:I

.field public navBarHeightLandscape:I

.field public qsPanelController:Lcom/android/systemui/qs/SecQSPanelController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

    return-void
.end method


# virtual methods
.method public getAlbumArtWidth(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07062a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getPanelSidePadding(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method public getAvailableDisplayHeight(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->navBarHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->navBarHeightLandscape:I

    :goto_0
    sub-int/2addr v1, v0

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->cutoutHeight:I

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->cutoutHeightLandscape:I

    :goto_1
    sub-int/2addr v1, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0710ee

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method public getBottomBarTileList(ILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const p0, 0x7f131040

    goto :goto_0

    :cond_0
    const p0, 0x7f131041

    :goto_0
    sget-object p1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->string(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessTileLayoutBetweenMargin(Landroid/content/Context;)I
    .locals 1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070f4a

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->float(ILandroid/content/Context;)F

    move-result p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public getButtonsWidth(Landroid/content/Context;)I
    .locals 2

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071055

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-double v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070d22

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-double v0, p0

    :goto_0
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

.method public getDateButtonContainerPadding(Landroid/content/Context;)I
    .locals 1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070f75

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public getDateButtonContainerTopMargin(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07105c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getDetailContentViewMaxHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070d43

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getDetailContentViewMinHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070d44

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getDetailSidePadding(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070d6d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getLabelHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07108a

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getMediaDeviceBarTouchAreaBetweenPadding(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070ea4

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getMediaPlayerCollapsedHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0710bd

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getNotificationBottomPadding(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNotificationSidePadding(Landroid/content/Context;Z)I
    .locals 1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p0, p0

    const p2, 0x7f070e4e

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070d1a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    mul-float/2addr p1, p0

    sub-float/2addr p2, p1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p2, p0

    goto :goto_1

    :cond_0
    int-to-float p0, p0

    if-eqz p2, :cond_1

    const p2, 0x7f070bb7

    goto :goto_0

    :cond_1
    const p2, 0x7f070b9c

    :goto_0
    invoke-static {p1, p2, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p2

    :goto_1
    float-to-int p0, p2

    return p0
.end method

.method public getPanelHeight(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getPanelSidePadding(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0710d4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPanelStartEndPadding(ILandroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0710d4

    invoke-static {p0, p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPanelWidth(Landroid/content/Context;)I
    .locals 1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    const v0, 0x7f070e51

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public getQQSPanelSidePadding(Landroid/content/Context;)I
    .locals 2

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p0, p0

    const v0, 0x7f070e4e

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070d1a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    mul-float/2addr p1, p0

    sub-float/2addr v0, p1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getQQSPanelStartEndPadding(ILandroid/content/Context;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getPanelStartEndPadding(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getQSGuideContainerMargin(Landroid/content/Context;)I
    .locals 1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070dc1

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getQSGuideImageHeight(Landroid/content/Context;)I
    .locals 1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070dc7

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getQSGuideImageWidth(Landroid/content/Context;)I
    .locals 1

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x7f070dca

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getQSGuideWidth(Landroid/content/Context;Z)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const p2, 0x7f070dd1

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getQsTileColumn(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

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

    const p0, 0x7f0b00f0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->int(ILandroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getQsTileMinNum(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0b00de

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->int(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getQuickQsTileNum(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0b00e8

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->int(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getQuickSettingExtraSidePadding(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getShadeHeaderHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070624

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getShadeHeaderSidePadding(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDateButtonContainerPadding(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDateButtonContainerPadding(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getShadeHeaderWidth(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTileExpandedHeight(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f071722

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTileExpandedSidePadding(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07171a

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTileExpandedWidth(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f071724

    invoke-static {v0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

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

.method public getTileLabelStartMargin(Landroid/content/Context;)I
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07062f

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTopBarTileList(ILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const p0, 0x7f1310f8

    goto :goto_0

    :cond_0
    const p0, 0x7f1310f9

    :goto_0
    sget-object p1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->string(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
