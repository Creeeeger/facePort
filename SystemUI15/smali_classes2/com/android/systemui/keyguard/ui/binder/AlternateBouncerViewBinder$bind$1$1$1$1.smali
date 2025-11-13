.class public final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $alternateBouncerDependencies:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

.field public final synthetic $swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

.field public final synthetic $tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

.field public final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1;->$swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1;->$tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1;->$alternateBouncerDependencies:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "AlternateBouncer-TAP"

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1;->$tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    const-string v1, "AlternateBouncer-SWIPE"

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1;->$swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1$1;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1;->$alternateBouncerDependencies:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    invoke-direct {p1, v3, p0}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;)V

    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->addOnGestureDetectedCallback(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1$2;

    invoke-direct {p1, v3, p0}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$1$1$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->addOnGestureDetectedCallback(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
