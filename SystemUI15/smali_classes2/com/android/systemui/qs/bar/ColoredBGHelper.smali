.class public final Lcom/android/systemui/qs/bar/ColoredBGHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Landroid/app/OnSemColorsChangedListener;
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final THEME_FIXED_ALPHA:I

.field public final WALLPAPER_FIXED_ALPHA:I

.field public actualAppliedColor:I

.field public final barBGList:Ljava/util/ArrayList;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public curAlpha:I

.field public curExtractColor:I

.field public final handler:Landroid/os/Handler;

.field public homeMatchingColor:I

.field public final homeWallpaperColors:Ljava/util/ArrayList;

.field public lockMatchingColor:I

.field public final lockWallpaperColors:Ljava/util/ArrayList;

.field public final noRippleBarBGList:Ljava/util/ArrayList;

.field public panelExpanded:Z

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final settingsValueList:[Landroid/net/Uri;

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public uiMode:I

.field public updateBGAfterPanelCollapsed:Lcom/android/systemui/qs/bar/ColoredBGHelper$updateBGColor$1;

.field public final wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/bar/ColoredBGHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/ColoredBGHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p5, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->handler:Landroid/os/Handler;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->barBGList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->noRippleBarBGList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->homeWallpaperColors:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->lockWallpaperColors:Ljava/util/ArrayList;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->actualAppliedColor:I

    iput p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->curExtractColor:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getResourceColor()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->homeMatchingColor:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getResourceColor()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->lockMatchingColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->uiMode:I

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/net/Uri;

    const-string p2, "minimal_battery_use"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string/jumbo p2, "ultra_powersaving_mode"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string p2, "accessibility_reduce_transparency"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->settingsValueList:[Landroid/net/Uri;

    const-string p1, "3d"

    invoke-static {p1}, Lkotlin/text/HexExtensionsKt;->hexToInt$default(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->WALLPAPER_FIXED_ALPHA:I

    const-string p1, "33"

    invoke-static {p1}, Lkotlin/text/HexExtensionsKt;->hexToInt$default(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->THEME_FIXED_ALPHA:I

    const-string p0, "ColoredBGHelper"

    const-string p1, "init"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static toCompareColorString(II)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0x"

    const-string v1, " > 0x"

    invoke-static {v0, p0, v1, p1}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addBarBackground(Landroid/view/View;Z)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->curExtractColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->setBackGroundDrawable(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getBGColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->setBackGroundDrawable(Landroid/view/View;I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->barBGList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->barBGList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->noRippleBarBGList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->noRippleBarBGList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final adjustLegibility(I)I
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget p0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->uiMode:I

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x2

    aget v1, v0, p1

    if-eqz p0, :cond_1

    const p0, 0x3eaaaaab

    goto :goto_1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_1
    mul-float/2addr v1, p0

    aput v1, v0, p1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public final extractColor(Ljava/util/ArrayList;I)I
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p2}, Landroid/app/WallpaperManager;->getSeedColors(I)[I

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->adjustLegibility(I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getResourceColor()I

    move-result p0

    return p0
.end method

.method public final getAppliedColor(ILjava/lang/String;)I
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x1

    aget v1, v0, v1

    const v2, 0x3d23d70a    # 0.04f

    cmpl-float v3, v1, v2

    const/4 v4, 0x2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    aget v3, v0, v4

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    :goto_0
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_2

    cmpg-float v1, v1, v3

    if-nez v1, :cond_2

    aget v0, v0, v4

    cmpg-float v0, v0, v3

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0605cf

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getResourceColor()I

    move-result p1

    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getBGColor "

    const-string v1, " 0x"

    const-string v2, "ColoredBGHelper"

    invoke-static {v0, p2, v1, p0, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public final getBGColor()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    const-string v1, "ColoredBGHelper"

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getResourceColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "3d000000"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getResourceColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->adjustLegibility(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getBGColor bgColorOverlaid 0x"

    invoke-static {v2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->lockMatchingColor:I

    const-string v1, "lock"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getAppliedColor(ILjava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getResourceColor()I

    move-result p0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->homeMatchingColor:I

    const-string v1, "home"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getAppliedColor(ILjava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0605cf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const-string v0, "getBGColor UPSM or reduceBlur"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method

.method public final getResourceColor()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0605d0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final initialize()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/app/WallpaperManager;->addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->settingsValueList:[Landroid/net/Uri;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "minimal_battery_use"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "accessibility_reduce_transparency"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->updateBGColor(Z)V

    return-void
.end method

.method public final onColorsChanged(Landroid/app/SemWallpaperColors;I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onColorsChanged which = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColoredBGHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->updateBGColor(Z)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->barBGList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->noRippleBarBGList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->actualAppliedColor:I

    iput v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->curExtractColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->curAlpha:I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->removeExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    iget-boolean p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->panelExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->updateBGAfterPanelCollapsed:Lcom/android/systemui/qs/bar/ColoredBGHelper$updateBGColor$1;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/ColoredBGHelper$updateBGColor$1;->run()V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->updateBGAfterPanelCollapsed:Lcom/android/systemui/qs/bar/ColoredBGHelper$updateBGColor$1;

    const-string p0, "ColoredBGHelper"

    const-string/jumbo p1, "updateBGAfterPanelCollapsed run~!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->updateBGAfterPanelCollapsed:Lcom/android/systemui/qs/bar/ColoredBGHelper$updateBGColor$1;

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->updateBGColor(Z)V

    :cond_0
    return-void
.end method

.method public final onThemeChanged()V
    .locals 2

    const-string v0, "ColoredBGHelper"

    const-string v1, "onThemeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->updateBGColor(Z)V

    return-void
.end method

.method public final removeFromBarBackground(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->barBGList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->barBGList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setBackGroundDrawable(Landroid/view/View;I)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getResourceColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3d000000"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->THEME_FIXED_ALPHA:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->WALLPAPER_FIXED_ALPHA:I

    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->curExtractColor:I

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->curAlpha:I

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->curAlpha:I

    iget v3, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->curExtractColor:I

    invoke-static {v3, p2}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->toCompareColorString(II)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->actualAppliedColor:I

    invoke-static {v4, v1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->toCompareColorString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, " "

    invoke-static {v5, v6}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "setBackGroundDrawable alpha = "

    const-string v7, " > "

    const-string v8, ", color = "

    invoke-static {v2, v0, v6, v7, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", actualAppliedColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColoredBGHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->actualAppliedColor:I

    iput p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->curExtractColor:I

    iput v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->curAlpha:I

    :cond_2
    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->noRippleBarBGList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0810b3

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f08100f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_4

    iget p0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->actualAppliedColor:I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public final updateBGColor(Z)V
    .locals 4

    const-string v0, "ColoredBGHelper"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->panelExpanded:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "updateBGAfterPanelCollapsed = Runnable { updateBGColor() }"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/systemui/qs/bar/ColoredBGHelper$updateBGColor$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper$updateBGColor$1;-><init>(Lcom/android/systemui/qs/bar/ColoredBGHelper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->updateBGAfterPanelCollapsed:Lcom/android/systemui/qs/bar/ColoredBGHelper$updateBGColor$1;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->homeWallpaperColors:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->extractColor(Ljava/util/ArrayList;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->homeMatchingColor:I

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->lockWallpaperColors:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->extractColor(Ljava/util/ArrayList;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eq p1, v3, :cond_3

    move-object v2, v1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->lockMatchingColor:I

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getBGColor()I

    move-result p1

    iget v1, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->curExtractColor:I

    invoke-static {v1, p1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->toCompareColorString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, " "

    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "updateBGColor extractColor = "

    invoke-static {v3, v1, v2, v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->barBGList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->setBackGroundDrawable(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    return-void
.end method
