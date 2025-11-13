.class public final Lcom/android/systemui/qs/SecQSPanelResourcePicker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-direct {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    return-void
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getBrightnessBarContainerHeight(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07011f

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getBrightnessBarExpandedHeight(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07011f

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getBrightnessBarHeight(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070121

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getNavBarHeight(Landroid/content/Context;)I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->navBarHeight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->navBarHeightLandscape:I

    :goto_0
    return p0
.end method

.method public final getNoBGTileIconSize(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0710f2

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getNoBGTileIconStartMargin(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070622

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getNoBGTileLabelStartMargin(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070623

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getPanelSidePadding(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getPanelSidePadding(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getPanelWidth(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getQuickQSCommonBottomMargin(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070eb8

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getSmartViewBarTileList(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f1310f3

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->string(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_HIDE_FROM_BAR:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "hide_smart_view_large_tile_on_panel"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1310e2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, p0, p1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getTileIconSize(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0710f3

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getTileIconStartMargin(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07062d

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getTileImageSize(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0710f4

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getTouchIconSize(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f070e96

    invoke-static {p0, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method
