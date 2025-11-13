.class public final Lcom/android/systemui/volume/panel/component/spatial/domain/SpatialAudioAvailabilityCriteria;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/domain/ComponentAvailabilityCriteria;


# instance fields
.field public final interactor:Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/SpatialAudioAvailabilityCriteria;->interactor:Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;

    return-void
.end method


# virtual methods
.method public final isAvailable()Lkotlinx/coroutines/flow/Flow;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/SpatialAudioAvailabilityCriteria;->interactor:Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->isAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/volume/panel/component/spatial/domain/SpatialAudioAvailabilityCriteria$isAvailable$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/panel/component/spatial/domain/SpatialAudioAvailabilityCriteria$isAvailable$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->isEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v2, v0, p0, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    return-object v2
.end method
