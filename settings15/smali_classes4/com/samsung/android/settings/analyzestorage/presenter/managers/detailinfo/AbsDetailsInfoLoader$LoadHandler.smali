.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;Landroid/os/Looper;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DirInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mListenerList:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DetailsResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DetailsResultListener;->onResult(Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DirInfo;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DirInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DirInfo;->mSize:J

    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mListenerMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DetailsResultListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mListenerMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mListenerList:Ljava/util/List;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mListenerMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mListenerList:Ljava/util/List;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mAppList:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadDetailInfo() ] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items are selected."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CheckedItemsDetailsLoader"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mAppList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mTotalSizeInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DirInfo;->mSize:J

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mIsCancel:Z

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DirInfo;->mSize:J

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->sCachedSize:Landroid/util/LruCache;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v5, :cond_4

    if-eqz v1, :cond_4

    invoke-static {v6, v2, v3, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v5, :cond_5

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;->mTotalSizeInfo:Ljava/util/Map;

    if-eqz p1, :cond_5

    const-string v1, "detail_info"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p1, p0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;Landroid/os/Looper;I)V

    invoke-virtual {p1, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
