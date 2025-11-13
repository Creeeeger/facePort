.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $immediately:Z

.field public final synthetic $info:Lcom/android/systemui/media/controls/shared/model/MediaData;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $oldKey:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$info:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iput-boolean p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$immediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;->listeners:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v9, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$info:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$immediately:Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move v5, p0

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZI)V

    goto :goto_0

    :cond_0
    return-void
.end method
