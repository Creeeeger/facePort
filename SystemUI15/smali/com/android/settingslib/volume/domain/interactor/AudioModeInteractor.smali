.class public final Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isOngoingCall:Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor$special$$inlined$map$1;

.field public final ongoingCallModes:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/volume/data/repository/AudioRepository;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor;->ongoingCallModes:Ljava/util/Set;

    check-cast p1, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    iget-object p1, p1, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->mode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor$special$$inlined$map$1;

    invoke-direct {v0, p1, p0}, Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor;)V

    iput-object v0, p0, Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor;->isOngoingCall:Lcom/android/settingslib/volume/domain/interactor/AudioModeInteractor$special$$inlined$map$1;

    return-void
.end method
