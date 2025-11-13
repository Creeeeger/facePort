.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public cachedGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

.field public displayDeviceType:I

.field public gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

.field public headsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field public final indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final indicatorGardenAlgorithmFactory:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;

.field public final inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

.field public final listeners:Ljava/util/List;

.field public final mainHandler:Landroid/os/Handler;

.field public final statusIconContainerCallbacks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->indicatorGardenAlgorithmFactory:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mainHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    iget-object p4, p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-object p5, p4, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    sget-object p6, Lcom/android/systemui/statusbar/phone/CutoutType;->CENTER_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    if-ne p5, p6, :cond_0

    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;

    goto :goto_0

    :cond_0
    sget-boolean p5, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz p5, :cond_1

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmSidelingCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;

    goto :goto_0

    :cond_1
    iget-object p4, p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-object p5, p4, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    sget-object p6, Lcom/android/systemui/statusbar/phone/CutoutType;->RIGHT_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    if-ne p5, p6, :cond_2

    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmRightCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;

    goto :goto_0

    :cond_2
    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmNoCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;

    :goto_0
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->statusIconContainerCallbacks:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-direct {p3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->cachedGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->listeners:Ljava/util/List;

    sget-boolean p3, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->displayDeviceType:I

    :cond_3
    const-string p2, "IndicatorGardenPresenter"

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->listeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->cachedGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenListener;->onGardenChanged(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->addCallback(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenListener;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string p2, "IndicatorGardenPresenter"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "    IndicatorGardenInputProperties"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    const-string v1, "        rotation(0-0,90-1,180-2,270-3)="

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "        statusBarWidth="

    const-string v4, ", statusBarHeight="

    const-string v5, " "

    invoke-static {v0, v1, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cornerPaddingC:I

    iget v1, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultStartPadding:I

    const-string v2, "        cornerPaddingC="

    const-string v3, " (defaultStartPadding="

    const-string v4, ")"

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutSidePaddingD:I

    iget v1, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutInnerPaddingD:I

    iget v2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultCenterPadding:I

    const-string v3, "        cutoutSidePaddingD="

    const-string v5, ", cutoutInnerPaddingD="

    const-string v6, " (defaultCenterPadding="

    invoke-static {v0, v1, v3, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutTopMarginB:I

    const-string v1, "        cutoutTopMarginB="

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->density:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "        density="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "        displayCutout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->indicatorGardenAlgorithmFactory:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "    IndicatorCutoutUtil"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "        cutoutType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " isUDC="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isMainDisplay="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "        excludeArea="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onGardenApplyWindowInsets(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 4

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getGardenWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getGardenWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getGardenWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set cutout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IndicatorGardenInputProperties"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public final onGardenConfigurationChanged(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->updateWindowMetrics()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->displayDeviceType:I

    iget p2, p2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v0, p2, :cond_3

    iput p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->displayDeviceType:I

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->indicatorGardenAlgorithmFactory:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;

    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->loadDisplayCutout()V

    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    sget-object v2, Lcom/android/systemui/statusbar/phone/CutoutType;->CENTER_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    if-ne v1, v2, :cond_0

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmSidelingCenterCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->cutoutType:Lcom/android/systemui/statusbar/phone/CutoutType;

    sget-object v2, Lcom/android/systemui/statusbar/phone/CutoutType;->RIGHT_CUTOUT:Lcom/android/systemui/statusbar/phone/CutoutType;

    if-ne v1, v2, :cond_2

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmRightCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->indicatorGardenAlgorithmNoCutout:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->initResources()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateLeftPadding()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateRightPadding()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->hasCameraTopMargin()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateCameraTopMargin()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateCenterContainerMaxWidth()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->cachedGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isEqual(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->listeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->listeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenListener;->onGardenChanged(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->cachedGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    invoke-interface {p1, v1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V

    return-void
.end method
