.class public final Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final insetsCache:Landroid/util/LruCache;

.field public final isPrivacyDotEnabled$delegate:Lkotlin/Lazy;

.field public final listeners:Ljava/util/Set;

.field public final marginBottomOverrides:Ljava/util/Map;

.field public final sysUICutoutProvider:Lcom/android/systemui/SysUICutoutProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/SysUICutoutProvider;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->sysUICutoutProvider:Lcom/android/systemui/SysUICutoutProvider;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    new-instance p1, Landroid/util/LruCache;

    const/16 p5, 0x10

    invoke-direct {p1, p5}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p5, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$isPrivacyDotEnabled$2;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$isPrivacyDotEnabled$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;)V

    invoke-static {p1, p5}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->isPrivacyDotEnabled$delegate:Lkotlin/Lazy;

    check-cast p2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    const-string p1, "StatusBarInsetsProvider"

    invoke-static {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;)V

    const-string/jumbo p2, "status-bar-insets"

    invoke-virtual {p4, p2, p1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->marginBottomOverrides:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final currentRotationHasCornerCutout()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v1, "Required value was null."

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Rect;->left:I

    if-lez p0, :cond_1

    iget p0, v0, Landroid/graphics/Rect;->right:I

    iget v0, v3, Landroid/graphics/Point;->x:I

    if-lt p0, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->marginBottomOverrides:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bottom margin overrides: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getAndSetCalculatedAreaForRotation(ILcom/android/systemui/SysUICutoutInformation;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;)Landroid/graphics/Rect;
    .locals 13

    move-object v0, p0

    move v2, p1

    move-object/from16 v1, p3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v3

    const v4, 0x7f070ed4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->isPrivacyDotEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    const v6, 0x7f070c59

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f070c58

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v9, v5

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v5, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v7, v4

    goto :goto_2

    :cond_2
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v7, v6

    move v6, v4

    :goto_2
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->marginBottomOverrides:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    move v10, v4

    goto :goto_5

    :cond_3
    if-eqz v2, :cond_7

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    const v4, 0x7f071486

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown rotation: "

    invoke-static {p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const v4, 0x7f071485

    goto :goto_4

    :cond_6
    const v4, 0x7f071487

    goto :goto_4

    :cond_7
    const v4, 0x7f071484

    :goto_4
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_3

    :goto_5
    const v4, 0x7f071498

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->isLayoutRtl()Z

    move-result v12

    move v1, v3

    move v2, p1

    move-object v3, p2

    move v5, v8

    move v8, v12

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->calculateInsetsForRotationWithRotatedResources(IILcom/android/systemui/SysUICutoutInformation;Landroid/graphics/Rect;IIIZIII)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final getBoundingRectForPrivacyChipForRotation(ILandroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getCacheKey(ILandroid/view/DisplayCutout;)Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/util/leak/RotationUtils;->getResourcesForRotation(ILandroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070c58

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070c50

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->isLayoutRtl()Z

    move-result p0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, v0, p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->getPrivacyChipBoundingRectForInsets(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getCacheKey(ILandroid/view/DisplayCutout;)Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    new-instance v1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, p1, v1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;-><init>(ILandroid/graphics/Rect;Landroid/view/DisplayCutout;)V

    return-object v0
.end method

.method public final getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->sysUICutoutProvider:Lcom/android/systemui/SysUICutoutProvider;

    invoke-virtual {v0}, Lcom/android/systemui/SysUICutoutProvider;->cutoutInfoForCurrentDisplayAndRotation()Lcom/android/systemui/SysUICutoutInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/SysUICutoutInformation;->cutout:Landroid/view/DisplayCutout;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getCacheKey(ILandroid/view/DisplayCutout;)Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/android/systemui/util/leak/RotationUtils;->getResourcesForRotation(ILandroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getAndSetCalculatedAreaForRotation(ILcom/android/systemui/SysUICutoutInformation;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;)Landroid/graphics/Rect;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public final getStatusBarContentInsetsForCurrentRotation()Landroid/graphics/Insets;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "StatusBarContentInsetsProvider.getStatusBarContentInsetsForRotation"

    invoke-static {v2}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->sysUICutoutProvider:Lcom/android/systemui/SysUICutoutProvider;

    invoke-virtual {v2}, Lcom/android/systemui/SysUICutoutProvider;->cutoutInfoForCurrentDisplayAndRotation()Lcom/android/systemui/SysUICutoutInformation;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/systemui/SysUICutoutInformation;->cutout:Landroid/view/DisplayCutout;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getCacheKey(ILandroid/view/DisplayCutout;)Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v5, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_2

    if-eq v4, v6, :cond_2

    iget v4, v5, Landroid/graphics/Point;->y:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    iput v7, v5, Landroid/graphics/Point;->y:I

    iput v4, v5, Landroid/graphics/Point;->x:I

    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, v6, :cond_3

    iget v4, v5, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_3
    iget v4, v5, Landroid/graphics/Point;->x:I

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    invoke-virtual {v5, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/systemui/util/leak/RotationUtils;->getResourcesForRotation(ILandroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0, v0, v2, v5, v3}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getAndSetCalculatedAreaForRotation(ILcom/android/systemui/SysUICutoutInformation;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;)Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    iget p0, v5, Landroid/graphics/Rect;->left:I

    iget v0, v5, Landroid/graphics/Rect;->top:I

    iget v2, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-static {p0, v0, v4, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_5
    return-object p0

    :goto_3
    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_6
    throw p0
.end method

.method public final getStatusBarPaddingTop()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateCameraTopMargin()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final notifyInsetsChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;->onStatusBarContentInsetsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->notifyInsetsChanged()V

    return-void
.end method

.method public final onMaxBoundsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->notifyInsetsChanged()V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->notifyInsetsChanged()V

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
