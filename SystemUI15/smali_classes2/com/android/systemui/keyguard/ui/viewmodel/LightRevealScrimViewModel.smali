.class public final Lcom/android/systemui/keyguard/ui/viewmodel/LightRevealScrimViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final lightRevealEffect:Lkotlinx/coroutines/flow/Flow;

.field public final revealAmount:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$filter$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->lightRevealEffect:Lkotlinx/coroutines/flow/Flow;

    iget-object p0, p1, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->revealAmount:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$filter$1;

    return-void
.end method
