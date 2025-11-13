.class public Lcom/android/internal/util/ScreenshotHelper;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"


# static fields
.field public static final blacklist SCREENSHOT_MSG_PROCESS_COMPLETE:I = 0x2

.field public static final blacklist SCREENSHOT_MSG_URI:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenshotHelper"


# instance fields
.field private final blacklist SCREENSHOT_TIMEOUT_MS:I

.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final blacklist mScreenshotLock:Ljava/lang/Object;

.field private blacklist mScreenshotService:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$0A2Yp-uMSWp8ZUyiYvgWHutaph4(Lcom/android/internal/util/ScreenshotHelper;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/ScreenshotHelper;->lambda$takeScreenshotInternal$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyScreenshotError(Lcom/android/internal/util/ScreenshotHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->notifyScreenshotError()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetConnection(Lcom/android/internal/util/ScreenshotHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->resetConnection()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper;->SCREENSHOT_TIMEOUT_MS:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/ScreenshotHelper$1;-><init>(Lcom/android/internal/util/ScreenshotHelper;)V

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic blacklist lambda$takeScreenshotInternal$0(Ljava/util/function/Consumer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    const-string v1, "ScreenshotHelper"

    const-string v2, "Timed out before getting screenshot capture response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->resetConnection()V

    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->notifyScreenshotError()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist notifyScreenshotError()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private blacklist resetConnection()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ScreenshotHelper"

    const-string v2, "Attempted to remove broadcast receiver twice"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist takeScreenshot(ILandroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/util/ScreenshotRequest$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/util/ScreenshotRequest$Builder;-><init>(II)V

    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotRequest$Builder;->build()Lcom/android/internal/util/ScreenshotRequest;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ScreenshotRequest;",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshotInternal(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;J)V

    return-void
.end method

.method public blacklist takeScreenshotInternal(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;J)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ScreenshotRequest;",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    iget-object v12, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    iget-object v1, v7, Lcom/android/internal/util/ScreenshotHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7, v9}, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/ScreenshotHelper;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v0

    const/4 v0, 0x0

    const/4 v14, 0x0

    move-object/from16 v15, p1

    :try_start_1
    invoke-static {v14, v0, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    move-object v6, v0

    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object v14, v6

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/ScreenshotHelper$2;-><init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Looper;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    move-object v6, v0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v14, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    :try_start_2
    invoke-virtual {v1, v14}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    :try_start_3
    const-string v2, "ScreenshotHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t take screenshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v8, v13, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/util/ScreenshotHelper;->resetConnection()V

    :cond_3
    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v5, v1

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v16, Lcom/android/internal/util/ScreenshotHelper$3;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, p3

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v5, p2

    move-object/from16 v18, v6

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/ScreenshotHelper$3;-><init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Message;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    move-object/from16 v1, v16

    iget-object v2, v7, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v4, 0x4000001

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v13, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    iget-object v2, v7, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_2
    nop

    :goto_3
    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v15, p1

    :goto_4
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method
