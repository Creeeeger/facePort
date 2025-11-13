.class public final Lcom/android/systemui/keyguard/ui/composable/section/LockSection;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final deviceEntryBackgroundViewModel:Ldagger/Lazy;

.field public final deviceEntryForegroundViewModel:Ldagger/Lazy;

.field public final deviceEntryIconViewModel:Ldagger/Lazy;

.field public final falsingManager:Ldagger/Lazy;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field public final notificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

.field public final vibratorHelper:Ldagger/Lazy;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/view/WindowManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/flags/FeatureFlagsClassic;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/shade/NotificationPanelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroid/view/WindowManager;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/flags/FeatureFlagsClassic;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->windowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->authController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->deviceEntryIconViewModel:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->deviceEntryForegroundViewModel:Ldagger/Lazy;

    iput-object p8, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->deviceEntryBackgroundViewModel:Ldagger/Lazy;

    iput-object p9, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->falsingManager:Ldagger/Lazy;

    iput-object p10, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->vibratorHelper:Ldagger/Lazy;

    iput-object p11, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->notificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    return-void
.end method


# virtual methods
.method public final LockIcon-BAq54LU(Lcom/android/compose/animation/scene/SceneScope;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 8

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x5abf425b

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1

    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/composable/section/LockSection;->notificationPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    const v1, 0x7f0a064e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_2
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$3;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$3;-><init>(Lcom/android/systemui/keyguard/ui/composable/section/LockSection;Landroidx/compose/ui/graphics/Color;)V

    sget-object v2, Lcom/android/systemui/keyguard/ui/composable/section/LockSectionKt;->LockIconElementKey:Lcom/android/compose/animation/scene/ElementKey;

    invoke-interface {p1, p3, v2}, Lcom/android/compose/animation/scene/SceneScope;->element(Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/ElementKey;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$4;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$4;-><init>(Lcom/android/systemui/keyguard/ui/composable/section/LockSection;Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p4

    if-eqz p4, :cond_3

    new-instance v7, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguard/ui/composable/section/LockSection$LockIcon$5;-><init>(Lcom/android/systemui/keyguard/ui/composable/section/LockSection;Lcom/android/compose/animation/scene/SceneScope;Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/Modifier;II)V

    iput-object v7, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
