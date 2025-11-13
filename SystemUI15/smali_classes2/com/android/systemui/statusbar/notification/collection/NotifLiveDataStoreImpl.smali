.class public final Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# instance fields
.field public final activeNotifCount:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

.field public final activeNotifCountPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

.field public final activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

.field public final activeNotifListPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

.field public final hasActiveNotifs:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

.field public final hasActiveNotifsPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

.field public final mainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "hasActiveNotifs"

    invoke-direct {v0, v2, v1, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->hasActiveNotifsPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "activeNotifCount"

    invoke-direct {v1, v3, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifCountPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const-string v4, "activeNotifList"

    invoke-direct {v2, v4, v3, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifListPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->hasActiveNotifs:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifCount:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    return-void
.end method


# virtual methods
.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 2

    const-string v0, "activeNotifListPrivate"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifListPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeNotifCountPrivate"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifCountPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hasActiveNotifsPrivate"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->hasActiveNotifsPrivate:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
