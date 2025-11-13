.class public final Lcom/android/systemui/keyguard/ui/viewmodel/WindowManagerLockscreenVisibilityViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final aodVisibility:Lkotlinx/coroutines/flow/Flow;

.field public final lockscreenVisibility:Lkotlinx/coroutines/flow/Flow;

.field public final surfaceBehindAnimating:Lkotlinx/coroutines/flow/Flow;

.field public final surfaceBehindVisibility:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->surfaceBehindVisibility:Lkotlinx/coroutines/flow/Flow;

    iget-object p0, p1, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->usingKeyguardGoingAwayAnimation:Lkotlinx/coroutines/flow/Flow;

    iget-object p0, p1, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->lockscreenVisibility:Lkotlinx/coroutines/flow/Flow;

    iget-object p0, p1, Lcom/android/systemui/keyguard/domain/interactor/WindowManagerLockscreenVisibilityInteractor;->aodVisibility:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
