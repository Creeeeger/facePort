.class public final Lcom/android/systemui/qs/panels/domain/interactor/GridConsistencyInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final consistencyInteractors:Ljava/util/Map;

.field public final currentTilesInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;

.field public final defaultConsistencyInteractor:Lcom/android/systemui/qs/panels/domain/interactor/GridTypeConsistencyInteractor;

.field public final gridLayoutTypeInteractor:Lcom/android/systemui/qs/panels/domain/interactor/GridLayoutTypeInteractor;

.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/panels/domain/interactor/GridConsistencyInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/panels/domain/interactor/GridConsistencyInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/panels/domain/interactor/GridLayoutTypeInteractor;Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;Ljava/util/Map;Lcom/android/systemui/qs/panels/domain/interactor/GridTypeConsistencyInteractor;Lcom/android/systemui/log/LogBuffer;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/panels/domain/interactor/GridLayoutTypeInteractor;",
            "Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/qs/panels/shared/model/GridLayoutType;",
            "Lcom/android/systemui/qs/panels/domain/interactor/GridTypeConsistencyInteractor;",
            ">;",
            "Lcom/android/systemui/qs/panels/domain/interactor/GridTypeConsistencyInteractor;",
            "Lcom/android/systemui/log/LogBuffer;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
