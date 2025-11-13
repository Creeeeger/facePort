.class public final Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _edgeGlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final context:Landroid/content/Context;

.field public final edgeGlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyboardConnected:Lkotlinx/coroutines/flow/Flow;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;Lcom/android/systemui/keyboard/docking/domain/interactor/KeyboardDockingIndicationInteractor;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel;->windowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel;->createEffectConfig()Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel;->_edgeGlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p3, Lcom/android/systemui/keyboard/docking/domain/interactor/KeyboardDockingIndicationInteractor;->onKeyboardConnected:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel$1;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p0, p2}, Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel$1;-><init>(Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p5, p2, p2, p1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final createEffectConfig()Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v3, :cond_0

    const/4 v7, 0x1

    const/high16 v8, -0x3c6a0000    # -300.0f

    const/4 v9, 0x0

    if-eq v3, v7, :cond_3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    const/4 v7, 0x3

    if-eq v3, v7, :cond_1

    :cond_0
    mul-float v8, v1, v6

    add-float v3, v2, v4

    move v15, v1

    move v12, v2

    move v10, v3

    move v14, v5

    move v11, v8

    move v13, v11

    goto :goto_0

    :cond_1
    mul-float v8, v2, v6

    add-float v3, v1, v4

    move v13, v1

    move v14, v2

    move v11, v3

    move v15, v5

    move v10, v8

    move v12, v10

    goto :goto_0

    :cond_2
    mul-float/2addr v6, v1

    move v15, v1

    move v14, v5

    move v11, v6

    move v13, v11

    move v10, v8

    move v12, v9

    goto :goto_0

    :cond_3
    mul-float/2addr v6, v2

    move v14, v2

    move v15, v5

    move v10, v6

    move v12, v10

    move v11, v8

    move v13, v9

    :goto_0
    new-instance v1, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;

    iget-object v0, v0, Lcom/android/systemui/keyboard/docking/ui/viewmodel/KeyboardDockingIndicationViewModel;->context:Landroid/content/Context;

    const v2, 0x1010435

    invoke-static {v2, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    const-wide/16 v20, 0x320

    const-wide/16 v22, 0x320

    const/high16 v17, 0x442f0000    # 700.0f

    const-wide/16 v18, 0xbb8

    move-object v9, v1

    invoke-direct/range {v9 .. v23}, Lcom/android/systemui/surfaceeffects/glowboxeffect/GlowBoxConfig;-><init>(FFFFFFIFJJJ)V

    return-object v1
.end method
