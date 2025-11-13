.class public final Lcom/android/internal/app/PaymentSafetyPolicy;
.super Ljava/lang/Object;
.source "PaymentSafetyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/PaymentSafetyPolicy$UsageStatsWatcher;,
        Lcom/android/internal/app/PaymentSafetyPolicy$PaymentAppDBObserver;,
        Lcom/android/internal/app/PaymentSafetyPolicy$MyHandler;
    }
.end annotation


# static fields
.field private static final blacklist ARGS:[Ljava/lang/String;

.field private static final blacklist GET_IMPORTANT_LIST_METHOD_NAME:Ljava/lang/String; = "getImportantList"

.field private static final blacklist KEY_ACTION:Ljava/lang/String; = "action"

.field private static final blacklist KEY_CLASS_NAME:Ljava/lang/String; = "class_name"

.field private static final blacklist KEY_IMPORTANT_LIST:Ljava/lang/String; = "important_list"

.field private static final blacklist KEY_PACKAGE_NAME:Ljava/lang/String; = "pkg_name"

.field private static final blacklist KEY_UID:Ljava/lang/String; = "uid"

.field private static final blacklist KEY_USER_ID:Ljava/lang/String; = "userid"

.field private static final blacklist MSG_CHECK_PAYMENT_APP:I = 0x14

.field private static final blacklist MSG_LOAD_PAYMENT_APP_SET:I = 0xa

.field private static final blacklist MSG_ON_APPLICATION_KILL:I = 0x1e

.field private static final blacklist MSG_PKG_CHANGED:I = 0x28

.field private static final blacklist MSG_USER_ACTION:I = 0x32

.field private static final blacklist ON_PKG_CHANGED_METHOD_NAME:Ljava/lang/String; = "onPkgChanged"

.field private static final blacklist ON_USER_ACTION_METHOD_NAME:Ljava/lang/String; = "onUserAction"

.field private static final blacklist PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

.field private static final blacklist PAYMENT_APP_URI:Landroid/net/Uri;

.field private static final blacklist PROJECTION:[Ljava/lang/String;

.field private static final blacklist SECURE_FOLDER_SETUP_COMPLETE:Ljava/lang/String; = "com.samsung.knox.securefolder.SETUP_COMPLETE"

.field private static final blacklist SELECTION:Ljava/lang/String; = "mode=?"

.field private static final blacklist START_CHECK_METHOD_NAME:Ljava/lang/String; = "startCheck"

.field private static final blacklist TAG:Ljava/lang/String; = "PaymentSafetyPolicy"

.field private static volatile blacklist sInstance:Lcom/android/internal/app/PaymentSafetyPolicy;


# instance fields
.field private blacklist mCheckedAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mImportantAppLoaded:Z

.field private blacklist mImportantAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPaymentAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPkgChangedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mUserActionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCheckedAppSet(Lcom/android/internal/app/PaymentSafetyPolicy;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mCheckedAppSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/app/PaymentSafetyPolicy;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckPolicy(Lcom/android/internal/app/PaymentSafetyPolicy;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/PaymentSafetyPolicy;->checkPolicy(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckPolicy(Lcom/android/internal/app/PaymentSafetyPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/PaymentSafetyPolicy;->checkPolicy(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloadPaymentAppSet(Lcom/android/internal/app/PaymentSafetyPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/PaymentSafetyPolicy;->loadPaymentAppSet()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPkgChanged(Lcom/android/internal/app/PaymentSafetyPolicy;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/PaymentSafetyPolicy;->onPkgChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUserAction(Lcom/android/internal/app/PaymentSafetyPolicy;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/PaymentSafetyPolicy;->onUserAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 62
    nop

    .line 63
    const-string v0, "content://com.samsung.android.sm/ProtectedApps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/PaymentSafetyPolicy;->PAYMENT_APP_URI:Landroid/net/Uri;

    .line 64
    nop

    .line 65
    const-string v0, "content://com.samsung.android.sm.payment"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/PaymentSafetyPolicy;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    .line 73
    const-string/jumbo v0, "package_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/PaymentSafetyPolicy;->PROJECTION:[Ljava/lang/String;

    .line 77
    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/PaymentSafetyPolicy;->ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mPaymentAppSet:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mCheckedAppSet:Ljava/util/HashSet;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mImportantAppSet:Ljava/util/HashSet;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mImportantAppLoaded:Z

    .line 220
    new-instance v0, Lcom/android/internal/app/PaymentSafetyPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PaymentSafetyPolicy$1;-><init>(Lcom/android/internal/app/PaymentSafetyPolicy;)V

    iput-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mUserActionReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    new-instance v0, Lcom/android/internal/app/PaymentSafetyPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PaymentSafetyPolicy$2;-><init>(Lcom/android/internal/app/PaymentSafetyPolicy;)V

    iput-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mPkgChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PaymentSafetyPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v1, Lcom/android/internal/app/PaymentSafetyPolicy$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/PaymentSafetyPolicy$MyHandler;-><init>(Lcom/android/internal/app/PaymentSafetyPolicy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mHandler:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method private blacklist checkPolicy(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 342
    if-nez p1, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    const-string/jumbo v0, "pkg_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mPaymentAppSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mPaymentAppSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    monitor-exit v1

    return-void

    .line 350
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    iget-object v2, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mCheckedAppSet:Ljava/util/HashSet;

    monitor-enter v2

    .line 353
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mCheckedAppSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    const-string v1, "PaymentSafetyPolicy"

    const-string v3, "already checked"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v2

    return-void

    .line 357
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/PaymentSafetyPolicy;->loadImportantAppSet()V

    .line 358
    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mImportantAppSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 359
    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mCheckedAppSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/app/PaymentSafetyPolicy;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string/jumbo v3, "startCheck"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 368
    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "PaymentSafetyPolicy"

    const-string v3, "SmartManager app doesn\'t support payment policy, please check"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 361
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 350
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method private blacklist checkPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 333
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 334
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "pkg_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v2, "class_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 338
    iget-object v2, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/app/PaymentSafetyPolicy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    sget-object v0, Lcom/android/internal/app/PaymentSafetyPolicy;->sInstance:Lcom/android/internal/app/PaymentSafetyPolicy;

    if-nez v0, :cond_1

    .line 97
    const-class v0, Lcom/android/internal/app/PaymentSafetyPolicy;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/android/internal/app/PaymentSafetyPolicy;->sInstance:Lcom/android/internal/app/PaymentSafetyPolicy;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/android/internal/app/PaymentSafetyPolicy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/PaymentSafetyPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/app/PaymentSafetyPolicy;->sInstance:Lcom/android/internal/app/PaymentSafetyPolicy;

    .line 101
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 103
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/app/PaymentSafetyPolicy;->sInstance:Lcom/android/internal/app/PaymentSafetyPolicy;

    return-object v0
.end method

.method private blacklist loadImportantAppSet()V
    .locals 5

    .line 310
    iget-boolean v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mImportantAppLoaded:Z

    if-eqz v0, :cond_0

    .line 311
    return-void

    .line 314
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/app/PaymentSafetyPolicy;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string v2, "getImportantList"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 316
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 317
    const-string v1, "important_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 318
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 319
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 320
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mImportantAppSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    nop

    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 324
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mImportantAppLoaded:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "PaymentSafetyPolicy"

    const-string v2, "SmartManager app doesn\'t support payment policy, please check"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void
.end method

.method private blacklist loadPaymentAppSet()V
    .locals 8

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mPaymentAppSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mPaymentAppSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 296
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/app/PaymentSafetyPolicy;->PAYMENT_APP_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/app/PaymentSafetyPolicy;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "mode=?"

    sget-object v6, Lcom/android/internal/app/PaymentSafetyPolicy;->ARGS:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 297
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 298
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    const-string v2, "PaymentSafetyPolicy"

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v2, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mPaymentAppSet:Ljava/util/HashSet;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/app/PaymentSafetyPolicy;
    :cond_0
    :goto_1
    throw v2

    .line 303
    .restart local p0    # "this":Lcom/android/internal/app/PaymentSafetyPolicy;
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 305
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v2, "PaymentSafetyPolicy"

    const-string v3, "SmartManager app doesn\'t support payment app list, please check"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_2
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private blacklist onPkgChanged(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/app/PaymentSafetyPolicy;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string/jumbo v2, "onPkgChanged"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "PaymentSafetyPolicy"

    const-string v2, "SmartManager app doesn\'t support payment policy, please check"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private blacklist onUserAction(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/app/PaymentSafetyPolicy;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string/jumbo v2, "onUserAction"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "PaymentSafetyPolicy"

    const-string v2, "SmartManager app doesn\'t support payment policy, please check"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private blacklist registerPaymentAppDBObserver()V
    .locals 4

    .line 124
    :try_start_0
    new-instance v0, Lcom/android/internal/app/PaymentSafetyPolicy$PaymentAppDBObserver;

    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/PaymentSafetyPolicy$PaymentAppDBObserver;-><init>(Lcom/android/internal/app/PaymentSafetyPolicy;Landroid/os/Handler;)V

    .line 125
    .local v0, "paymentAppDBObserver":Lcom/android/internal/app/PaymentSafetyPolicy$PaymentAppDBObserver;
    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/app/PaymentSafetyPolicy;->PAYMENT_APP_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "paymentAppDBObserver":Lcom/android/internal/app/PaymentSafetyPolicy$PaymentAppDBObserver;
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "PaymentSafetyPolicy"

    const-string/jumbo v2, "registerObserver cause exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method private blacklist registerReceiver()V
    .locals 7

    .line 202
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v0, "pkgFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mPkgChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 210
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v2, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mUserActionReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    nop

    .end local v0    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v1    # "userFilter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "PaymentSafetyPolicy"

    const-string/jumbo v2, "registerReceiver cause exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method private blacklist registerUsageStatsWatcher()V
    .locals 3

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usagestats"

    .line 266
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 267
    .local v0, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    new-instance v1, Lcom/android/internal/app/PaymentSafetyPolicy$UsageStatsWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/PaymentSafetyPolicy$UsageStatsWatcher;-><init>(Lcom/android/internal/app/PaymentSafetyPolicy;Lcom/android/internal/app/PaymentSafetyPolicy$UsageStatsWatcher-IA;)V

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "PaymentSafetyPolicy"

    const-string/jumbo v2, "registerUsageStatsWatcher cause exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist init()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/app/PaymentSafetyPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/PaymentSafetyPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/PaymentSafetyPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    return-void
.end method

.method synthetic blacklist lambda$init$0$com-android-internal-app-PaymentSafetyPolicy()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/internal/app/PaymentSafetyPolicy;->registerPaymentAppDBObserver()V

    .line 116
    invoke-direct {p0}, Lcom/android/internal/app/PaymentSafetyPolicy;->registerReceiver()V

    .line 117
    invoke-direct {p0}, Lcom/android/internal/app/PaymentSafetyPolicy;->registerUsageStatsWatcher()V

    .line 118
    return-void
.end method

.method public blacklist onApplicationKill(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 373
    const-string v0, "PaymentSafetyPolicy"

    const-string v1, "handler is null return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void

    .line 376
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 377
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 378
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 379
    iget-object v1, p0, Lcom/android/internal/app/PaymentSafetyPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    return-void
.end method
