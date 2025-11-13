.class public final Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final brightnessMirrorShowingRepository:Lcom/android/systemui/settings/brightness/data/repository/BrightnessMirrorShowingRepository;

.field public final isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/data/repository/BrightnessMirrorShowingRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;->brightnessMirrorShowingRepository:Lcom/android/systemui/settings/brightness/data/repository/BrightnessMirrorShowingRepository;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/data/repository/BrightnessMirrorShowingRepository;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/domain/interactor/BrightnessMirrorShowingInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
