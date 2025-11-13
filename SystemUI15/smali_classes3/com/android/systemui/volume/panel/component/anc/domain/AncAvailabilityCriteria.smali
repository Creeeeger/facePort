.class public final Lcom/android/systemui/volume/panel/component/anc/domain/AncAvailabilityCriteria;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/domain/ComponentAvailabilityCriteria;


# instance fields
.field public final ancSliceInteractor:Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/anc/domain/AncAvailabilityCriteria;->ancSliceInteractor:Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;

    return-void
.end method


# virtual methods
.method public final isAvailable()Lkotlinx/coroutines/flow/Flow;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/anc/domain/AncAvailabilityCriteria;->ancSliceInteractor:Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;->ancSlices:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/volume/panel/component/anc/domain/AncAvailabilityCriteria$isAvailable$$inlined$map$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/panel/component/anc/domain/AncAvailabilityCriteria$isAvailable$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    return-object v0
.end method
