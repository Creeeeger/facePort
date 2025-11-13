.class public final Lcom/android/internal/app/SmRccPolicy;
.super Ljava/lang/Object;
.source "SmRccPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SmRccPolicy$RccApp;,
        Lcom/android/internal/app/SmRccPolicy$MyHandler;,
        Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;
    }
.end annotation


# static fields
.field private static final blacklist ACTION:Ljava/lang/String; = "action"

.field private static final blacklist ACTION_DELETE:Ljava/lang/String; = "delete"

.field private static final blacklist ACTION_INSERT:Ljava/lang/String; = "insert"

.field private static final blacklist ACTION_UPDATE_OPEN:Ljava/lang/String; = "update_open"

.field private static final blacklist ACTION_UPDATE_RESTRICT:Ljava/lang/String; = "update_restrict"

.field private static final blacklist ACTION_UPDATE_SHOW:Ljava/lang/String; = "update_show"

.field private static final blacklist MSG_LOAD_RCC_APP_LIST:I = 0xa

.field private static final blacklist MSG_RCC_APP_DELETE:I = 0x1e

.field private static final blacklist MSG_RCC_APP_INSERT:I = 0x14

.field private static final blacklist MSG_RCC_APP_RESET_OPEN:I = 0x46

.field private static final blacklist MSG_RCC_APP_UPDATE_OPEN:I = 0x32

.field private static final blacklist MSG_RCC_APP_UPDATE_RESTRICT:I = 0x3c

.field private static final blacklist MSG_RCC_APP_UPDATE_SHOW:I = 0x28

.field private static final blacklist OFF:Ljava/lang/String; = "0"

.field private static final blacklist ON:Ljava/lang/String; = "1"

.field private static final blacklist OPEN:Ljava/lang/String; = "open"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final blacklist RCC_APP_AUTHORITY_URI:Landroid/net/Uri;

.field private static final blacklist RCC_APP_CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist RESET_SM_RCC_OPEN:Ljava/lang/String; = "reset_sm_rcc_open"

.field private static final blacklist RESTRICT:Ljava/lang/String; = "restrict"

.field private static final blacklist SHOW:Ljava/lang/String; = "show"

.field public static final blacklist SM_RCC_ACTIVITY_OPTIONS:Ljava/lang/String; = "SM_RCC_PACKAGE_OPTIONS"

.field public static final blacklist SM_RCC_EXTRA_RESULT_NEEDED:Ljava/lang/String; = "SM_RCC_EXTRA_RESULT_NEEDED"

.field public static final blacklist SM_RCC_PACKAGE_INTENT:Ljava/lang/String; = "SM_RCC_PACKAGE_INTENT"

.field public static final blacklist SM_RCC_PACKAGE_USERID:Ljava/lang/String; = "SM_RCC_PACKAGE_USERID"

.field private static final blacklist TAG:Ljava/lang/String; = "SmRccPolicy"

.field private static blacklist mRccPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/SmRccPolicy$RccApp;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sInstance:Lcom/android/internal/app/SmRccPolicy;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcallResetSmRccOpen(Lcom/android/internal/app/SmRccPolicy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/SmRccPolicy;->callResetSmRccOpen(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloadRccAppFromSm(Lcom/android/internal/app/SmRccPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/SmRccPolicy;->loadRccAppFromSm()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    const-string v0, "content://com.samsung.android.sm.rcc/SmRccApps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/SmRccPolicy;->RCC_APP_CONTENT_URI:Landroid/net/Uri;

    .line 44
    const-string v0, "content://com.samsung.android.sm.rcc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/SmRccPolicy;->RCC_APP_AUTHORITY_URI:Landroid/net/Uri;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "SmRccPolicy"

    const-string v1, "RccAppPolicy init"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RccAppThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v1, Lcom/android/internal/app/SmRccPolicy$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/SmRccPolicy$MyHandler;-><init>(Lcom/android/internal/app/SmRccPolicy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/app/SmRccPolicy;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v2, Lcom/android/internal/app/SmRccPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/app/SmRccPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/SmRccPolicy;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method

.method private blacklist callResetSmRccOpen(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 301
    const-string v0, "SmRccPolicy"

    if-nez p1, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    sget-object v1, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/SmRccPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/app/SmRccPolicy;->RCC_APP_AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v4, "reset_sm_rcc_open"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 309
    const-string v2, "call sm reset rcc open status"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_0

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "call sm reset rcc open status error"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/app/SmRccPolicy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/android/internal/app/SmRccPolicy;->sInstance:Lcom/android/internal/app/SmRccPolicy;

    if-nez v0, :cond_1

    .line 74
    const-class v0, Lcom/android/internal/app/SmRccPolicy;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/android/internal/app/SmRccPolicy;->sInstance:Lcom/android/internal/app/SmRccPolicy;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/android/internal/app/SmRccPolicy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/SmRccPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/app/SmRccPolicy;->sInstance:Lcom/android/internal/app/SmRccPolicy;

    .line 78
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 80
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/app/SmRccPolicy;->sInstance:Lcom/android/internal/app/SmRccPolicy;

    return-object v0
.end method

.method private blacklist loadRccAppFromSm()V
    .locals 8

    .line 196
    const-string v0, "SmRccPolicy"

    const-string/jumbo v1, "loadRccAppFromSm: "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v1, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/SmRccPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/app/SmRccPolicy;->RCC_APP_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    const-string/jumbo v2, "package_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "pkgName":Ljava/lang/String;
    const-string/jumbo v3, "show"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "show":Ljava/lang/String;
    const-string/jumbo v4, "open"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "open":Ljava/lang/String;
    const-string/jumbo v5, "restrict"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "restrict":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    new-instance v7, Lcom/android/internal/app/SmRccPolicy$RccApp;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/android/internal/app/SmRccPolicy$RccApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "put="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    nop

    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "show":Ljava/lang/String;
    .end local v4    # "open":Ljava/lang/String;
    .end local v5    # "restrict":Ljava/lang/String;
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/app/SmRccPolicy;
    :cond_0
    :goto_1
    throw v2

    .line 209
    .restart local p0    # "this":Lcom/android/internal/app/SmRccPolicy;
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 211
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "loadRccAppFromSm error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private blacklist registerRccDBObserver()V
    .locals 5

    .line 96
    const-string v0, "SmRccPolicy"

    :try_start_0
    new-instance v1, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;

    iget-object v2, p0, Lcom/android/internal/app/SmRccPolicy;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;-><init>(Lcom/android/internal/app/SmRccPolicy;Landroid/os/Handler;)V

    .line 97
    .local v1, "rccDBObserver":Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;
    iget-object v2, p0, Lcom/android/internal/app/SmRccPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/app/SmRccPolicy;->RCC_APP_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    const-string/jumbo v2, "registerRccDBObserver"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .end local v1    # "rccDBObserver":Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "registerRccDBObserver error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addRccPackage(Lcom/android/internal/app/SmRccPolicy$RccApp;)V
    .locals 3
    .param p1, "rccApp"    # Lcom/android/internal/app/SmRccPolicy$RccApp;

    .line 215
    if-nez p1, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/SmRccPolicy$RccApp;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 220
    sget-object v1, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRccPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmRccPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    return-void
.end method

.method public blacklist getSmRccAction()Ljava/lang/String;
    .locals 1

    .line 317
    const-string v0, "com.samsung.android.sm.security.RCC_START_APP"

    return-object v0
.end method

.method public blacklist isSmRccOpen(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "isTarget":Z
    if-nez p1, :cond_0

    .line 278
    return v0

    .line 281
    :cond_0
    sget-object v1, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/SmRccPolicy$RccApp;

    .line 282
    .local v1, "rccApp":Lcom/android/internal/app/SmRccPolicy$RccApp;
    if-nez v1, :cond_1

    .line 283
    return v0

    .line 285
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/app/SmRccPolicy$RccApp;->getOpen()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "open":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmRccOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",open="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmRccPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    const/4 v0, 0x1

    .line 290
    :cond_2
    return v0
.end method

.method public blacklist isSmRccPkg(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "isTarget":Z
    if-nez p1, :cond_0

    .line 259
    return v0

    .line 262
    :cond_0
    sget-object v1, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/SmRccPolicy$RccApp;

    .line 263
    .local v1, "rccApp":Lcom/android/internal/app/SmRccPolicy$RccApp;
    if-nez v1, :cond_1

    .line 264
    return v0

    .line 266
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/app/SmRccPolicy$RccApp;->getShow()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "show":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/app/SmRccPolicy$RccApp;->getRestrict()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "restrict":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSmRccPkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",restrict="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SmRccPolicy"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    const/4 v0, 0x1

    .line 272
    :cond_2
    return v0
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-app-SmRccPolicy()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/internal/app/SmRccPolicy;->registerRccDBObserver()V

    .line 91
    return-void
.end method

.method public blacklist loadData()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 322
    const-string v0, "SmRccPolicy"

    const-string v1, "SmRcc handler is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 325
    :cond_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    return-void
.end method

.method public blacklist removeRccPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 226
    if-eqz p1, :cond_0

    .line 227
    sget-object v0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeRccPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmRccPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public blacklist resetSmRccOpen(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 294
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 295
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x46

    iput v1, v0, Landroid/os/Message;->what:I

    .line 296
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    iget-object v1, p0, Lcom/android/internal/app/SmRccPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    return-void
.end method

.method public blacklist updateRccOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "open"    # Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/SmRccPolicy$RccApp;

    .line 242
    .local v0, "rccApp":Lcom/android/internal/app/SmRccPolicy$RccApp;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p2}, Lcom/android/internal/app/SmRccPolicy$RccApp;->setOpen(Ljava/lang/String;)V

    .line 245
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update rcc open pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " open="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmRccPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public blacklist updateRccRestrict(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrict"    # Ljava/lang/String;

    .line 249
    sget-object v0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/SmRccPolicy$RccApp;

    .line 250
    .local v0, "rccApp":Lcom/android/internal/app/SmRccPolicy$RccApp;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p2}, Lcom/android/internal/app/SmRccPolicy$RccApp;->setRestrict(Ljava/lang/String;)V

    .line 253
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update rcc restrict pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " restrict="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmRccPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public blacklist updateRccShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "show"    # Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/android/internal/app/SmRccPolicy;->mRccPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/SmRccPolicy$RccApp;

    .line 234
    .local v0, "rccApp":Lcom/android/internal/app/SmRccPolicy$RccApp;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p2}, Lcom/android/internal/app/SmRccPolicy$RccApp;->setShow(Ljava/lang/String;)V

    .line 237
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update rcc show pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmRccPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method
