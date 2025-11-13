.class public final Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;


# instance fields
.field public final mCollectionListener:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;

.field public final mNotifCachedContentViews:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;)V

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    return-void
.end method


# virtual methods
.method public final getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public final hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
