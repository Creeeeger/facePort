.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchSmartspaceMediaDataRemoved$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $immediately:Z

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchSmartspaceMediaDataRemoved$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchSmartspaceMediaDataRemoved$1;->$key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchSmartspaceMediaDataRemoved$1;->$immediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchSmartspaceMediaDataRemoved$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->listeners:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchSmartspaceMediaDataRemoved$1;->$key:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchSmartspaceMediaDataRemoved$1;->$immediately:Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    invoke-interface {v2, v1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
