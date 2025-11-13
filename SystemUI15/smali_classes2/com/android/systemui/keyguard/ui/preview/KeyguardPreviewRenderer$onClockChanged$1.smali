.class final Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/plugins/clocks/ClockController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    invoke-virtual {p1}, Lcom/android/systemui/shared/clocks/ClockRegistry;->createCurrentClock()Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockController:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/ClockEventController;->setClock(Lcom/android/systemui/plugins/clocks/ClockController;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->label:I

    invoke-static {v1, p1, p0}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->access$updateClockAppearance(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lcom/android/systemui/plugins/clocks/ClockController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    sget v1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->largeClockHostView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move-object v2, v3

    :cond_3
    invoke-static {v2}, Lcom/android/keyguard/KeyguardClockSwitch;->getLargeClockRegion(Landroid/view/ViewGroup;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onTargetRegionChanged(Landroid/graphics/Rect;)V

    iget-boolean v1, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->shouldHighlightSelectedAffordance:Z

    const v2, 0x3e99999a    # 0.3f

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v1, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->largeClockHostView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_5

    move-object v1, v3

    :cond_5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->largeClockHostView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_6

    move-object p1, v3

    :cond_6
    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smallClockHostView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_7

    move-object v1, v3

    :cond_7
    invoke-static {v1}, Lcom/android/keyguard/KeyguardClockSwitch;->getSmallClockRegion(Landroid/view/ViewGroup;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onTargetRegionChanged(Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->shouldHighlightSelectedAffordance:Z

    if-eqz p1, :cond_8

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smallClockHostView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_9

    move-object p1, v3

    :cond_9
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smallClockHostView:Landroid/widget/FrameLayout;

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    move-object v3, p0

    :goto_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
