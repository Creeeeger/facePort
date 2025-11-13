.class public final Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntryCleanUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onEntryInit(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
