.class public final Lcom/android/systemui/keyguard/ui/viewmodel/InWindowLauncherAnimationViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final shouldPrepareForInWindowAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shouldStartInWindowAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;->transitioningToGoneWithInWindowAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/InWindowLauncherAnimationViewModel;->shouldPrepareForInWindowAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;->shouldStartInWindowAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/InWindowLauncherAnimationViewModel;->shouldStartInWindowAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
