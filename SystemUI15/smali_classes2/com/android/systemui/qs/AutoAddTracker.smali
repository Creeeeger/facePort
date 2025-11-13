.class public final Lcom/android/systemui/qs/AutoAddTracker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/UserAwareController;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final FILTER:Landroid/content/IntentFilter;


# instance fields
.field public final autoAdded:Landroid/util/ArraySet;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final qsHost:Lcom/android/systemui/qs/QSHost;

.field public final restoreReceiver:Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;

.field public restoredTiles:Ljava/util/Map;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/AutoAddTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/AutoAddTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.SETTING_RESTORED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/AutoAddTracker;->FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p2, p0, Lcom/android/systemui/qs/AutoAddTracker;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/qs/AutoAddTracker;->qsHost:Lcom/android/systemui/qs/QSHost;

    iput-object p6, p0, Lcom/android/systemui/qs/AutoAddTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput p7, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    new-instance p1, Lcom/android/systemui/qs/AutoAddTracker$contentObserver$1;

    invoke-direct {p1, p0, p5}, Lcom/android/systemui/qs/AutoAddTracker$contentObserver$1;-><init>(Lcom/android/systemui/qs/AutoAddTracker;Landroid/os/Handler;)V

    new-instance p1, Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;-><init>(Lcom/android/systemui/qs/AutoAddTracker;)V

    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->restoreReceiver:Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;

    return-void
.end method


# virtual methods
.method public final changeUser(Landroid/os/UserHandle;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->restoreReceiver:Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->restoredTiles:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/systemui/qs/AutoAddTracker;->loadTiles()V

    sget-object v2, Lcom/android/systemui/qs/AutoAddTracker;->FILTER:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/systemui/qs/AutoAddTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iget p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->restoreReceiver:Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;

    const/16 v7, 0x30

    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget p2, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    const-string v0, "Current user: "

    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/qs/AutoAddTracker;->restoredTiles:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Restored tiles: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Added tiles: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getCurrentUserId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    return p0
.end method

.method public final loadTiles()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    const-string v2, "qs_auto_tiles"

    iget v3, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    iget-object p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {p0, v2, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {p0, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :goto_0
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
