.class public final Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final messageAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

.field public final tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

.field public final udfpsAccessibilityOverlayViewModel:Ldagger/Lazy;

.field public final udfpsIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

.field public final viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Ldagger/Lazy;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel;Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;",
            "Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;",
            "Lcom/android/systemui/statusbar/gesture/TapGestureDetector;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->udfpsIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->udfpsAccessibilityOverlayViewModel:Ldagger/Lazy;

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->messageAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerMessageAreaViewModel;

    iput-object p7, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    return-void
.end method
