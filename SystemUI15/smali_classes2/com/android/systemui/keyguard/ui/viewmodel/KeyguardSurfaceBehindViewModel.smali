.class public final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSurfaceBehindViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final surfaceBehindViewParams:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;->viewParams:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
