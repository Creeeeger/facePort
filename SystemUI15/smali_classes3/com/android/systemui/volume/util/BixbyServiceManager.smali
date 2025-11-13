.class public final Lcom/android/systemui/volume/util/BixbyServiceManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final VOICE_ENABLE_URI:Landroid/net/Uri;


# instance fields
.field public final activityManagerWrapper:Lcom/android/systemui/volume/util/ActivityManagerWrapper;

.field public final context:Landroid/content/Context;

.field public isBixbyServiceChecked:Z

.field public isBixbyServiceOn:Z

.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/util/BixbyServiceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/BixbyServiceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "content://com.samsung.android.bixby.agent.settings/bixby_voice_isenable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/util/BixbyServiceManager;->VOICE_ENABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/volume/util/ActivityManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iput-object p3, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->activityManagerWrapper:Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method public final checkBixbyServiceEnabled()Z
    .locals 11

    const-string v0, "BixbyServiceManager"

    iget-object v1, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceChecked:Z

    iget-object v4, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/volume/util/BixbyServiceManager;->VOICE_ENABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "bixby_voice_isenable"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-ne v5, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v3

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string v3, "isBixbyServiceOn() : the waiting time elapsed before the lock was acquired!!"

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v2

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isBixbyServiceOn() : exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final isBixbyServiceForeground()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->activityManagerWrapper:Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    iget-object p0, p0, Lcom/android/systemui/volume/util/ActivityManagerWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "com.samsung.android.bixby.agent"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
