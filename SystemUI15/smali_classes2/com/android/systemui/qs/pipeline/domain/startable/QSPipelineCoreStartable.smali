.class public final Lcom/android/systemui/qs/pipeline/domain/startable/QSPipelineCoreStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final featureFlags:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;Lcom/android/systemui/qs/pipeline/domain/interactor/AccessibilityTilesInteractor;Lcom/android/systemui/qs/pipeline/domain/interactor/AutoAddInteractor;Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;Lcom/android/systemui/qs/pipeline/domain/interactor/RestoreReconciliationInteractor;Lcom/android/systemui/qs/panels/domain/interactor/GridConsistencyInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/domain/startable/QSPipelineCoreStartable;->featureFlags:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/startable/QSPipelineCoreStartable;->featureFlags:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->qsNewPipeline()V

    return-void
.end method
