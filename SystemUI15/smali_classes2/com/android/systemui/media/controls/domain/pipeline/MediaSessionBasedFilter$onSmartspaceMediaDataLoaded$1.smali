.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $data:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1;

    invoke-direct {v3, v0, v1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
