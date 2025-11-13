.class public final Lcom/android/systemui/qs/pipeline/domain/interactor/RestoreReconciliationInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final autoAddRepository:Lcom/android/systemui/qs/pipeline/data/repository/AutoAddRepository;

.field public final qsPipelineLogger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

.field public final qsSettingsRestoredRepository:Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredRepository;

.field public final restoreProcessors:Ljava/util/Set;

.field public final tileSpecRepository:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;Lcom/android/systemui/qs/pipeline/data/repository/AutoAddRepository;Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredRepository;Ljava/util/Set;Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;",
            "Lcom/android/systemui/qs/pipeline/data/repository/AutoAddRepository;",
            "Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredRepository;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/qs/pipeline/data/model/RestoreProcessor;",
            ">;",
            "Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/RestoreReconciliationInteractor;->restoreProcessors:Ljava/util/Set;

    return-void
.end method
