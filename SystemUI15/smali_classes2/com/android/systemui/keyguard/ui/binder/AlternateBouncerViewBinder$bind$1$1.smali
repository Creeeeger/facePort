.class final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;
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
.field final synthetic $alternateBouncerDependencies:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

.field final synthetic $scrim:Lcom/android/systemui/scrim/ScrimView;

.field final synthetic $swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

.field final synthetic $tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

.field final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;Lcom/android/systemui/scrim/ScrimView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;",
            "Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;",
            "Lcom/android/systemui/statusbar/gesture/TapGestureDetector;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;",
            "Lcom/android/systemui/scrim/ScrimView;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$alternateBouncerDependencies:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$scrim:Lcom/android/systemui/scrim/ScrimView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v7, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$alternateBouncerDependencies:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$scrim:Lcom/android/systemui/scrim/ScrimView;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;Lcom/android/systemui/scrim/ScrimView;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$alternateBouncerDependencies:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v8, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;

    const/4 v2, 0x0

    const-string v1, "AlternateBouncerViewBinder#viewModel.registerForDismissGestures"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v7, v0, v8, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$2;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$2;-><init>(Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;)V

    check-cast v2, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$scrim:Lcom/android/systemui/scrim/ScrimView;

    new-instance v4, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$2;

    const-string v5, "AlternateBouncerViewBinder#viewModel.scrimAlpha"

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;Lcom/android/systemui/scrim/ScrimView;)V

    invoke-static {p1, v7, v0, v4, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1;->$scrim:Lcom/android/systemui/scrim/ScrimView;

    new-instance v3, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$3;

    const-string v4, "AlternateBouncerViewBinder#viewModel.scrimColor"

    invoke-direct {v3, v4, v0, v2, p0}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$3;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;Lcom/android/systemui/scrim/ScrimView;)V

    invoke-static {p1, v7, v0, v3, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
