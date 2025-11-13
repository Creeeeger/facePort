.class public Landroid/drm/DrmManagerClient;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmManagerClient$InfoHandler;,
        Landroid/drm/DrmManagerClient$EventHandler;,
        Landroid/drm/DrmManagerClient$OnErrorListener;,
        Landroid/drm/DrmManagerClient$OnEventListener;,
        Landroid/drm/DrmManagerClient$OnInfoListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o ACTION_PROCESS_DRM_INFO:I = 0x3ea

.field private static final greylist-max-o ACTION_REMOVE_ALL_RIGHTS:I = 0x3e9

.field static final blacklist DRM_SECURE_PLAY:I = 0x578

.field public static final whitelist ERROR_NONE:I = 0x0

.field public static final whitelist ERROR_UNKNOWN:I = -0x7d0

.field public static final greylist-max-o INVALID_SESSION:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DrmManagerClient"

.field private static final blacklist isLogEnabled:Z = false


# instance fields
.field private blacklist DRM_DISPLAYPORT_ENABLE:Ljava/lang/String;

.field private blacklist isAcquired:Z

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

.field blacklist mDvfsHintManager:Lcom/samsung/android/os/SemDvfsManager;

.field private greylist-max-o mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

.field greylist-max-o mEventThread:Landroid/os/HandlerThread;

.field private greylist-max-o mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

.field greylist-max-o mInfoThread:Landroid/os/HandlerThread;

.field private greylist-max-o mNativeContext:J

.field private greylist-max-o mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private greylist-max-o mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private greylist-max-o mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

.field private volatile blacklist mReleased:Z

.field private greylist-max-o mUniqueId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;
    .locals 0

    iget-object p0, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnEventListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;
    .locals 0

    iget-object p0, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnInfoListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;
    .locals 0

    iget-object p0, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I
    .locals 0

    iget p0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$m_processDrmInfo(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$m_removeAllRights(Landroid/drm/DrmManagerClient;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_removeAllRights(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetErrorType(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->getErrorType(ILandroid/drm/DrmInfoStatus;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetEventType(Landroid/drm/DrmManagerClient;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getEventType(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 97
    const-string v0, "drmframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 86
    const-string v1, "/sys/class/dp_sec/dp_drm"

    iput-object v1, p0, Landroid/drm/DrmManagerClient;->DRM_DISPLAYPORT_ENABLE:Ljava/lang/String;

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/drm/DrmManagerClient;->isAcquired:Z

    .line 362
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    .line 363
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createEventThreads()V

    .line 366
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->_initialize()I

    move-result v1

    iput v1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 367
    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private native greylist-max-o _acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
.end method

.method private native greylist-max-o _canHandle(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private blacklist _checkFDSupporting(Ljava/lang/String;)I
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .line 321
    const-string v0, ".dcf"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "OmaExtensions":[Ljava/lang/String;
    const-string v1, ".pyv"

    const-string v2, ".pya"

    const-string v3, ".wmv"

    const-string v4, ".wma"

    const-string v5, ".asf"

    const-string v6, ".eny"

    const-string v7, ".pye"

    const-string v8, ".ismv"

    const-string v9, ".isma"

    const-string v10, ".mp4"

    const-string v11, ".fdsa"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "PlayReadyExtensions":[Ljava/lang/String;
    const-string v2, ".avi"

    const-string v3, "divx"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "DivxExtensions":[Ljava/lang/String;
    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 326
    return v3

    .line 328
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 332
    const/4 v3, 0x1

    return v3

    .line 328
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 336
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 340
    const/4 v3, 0x2

    return v3

    .line 336
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 344
    .end local v4    # "j":I
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_6

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 348
    const/4 v3, 0x3

    return v3

    .line 344
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 352
    .end local v4    # "i":I
    :cond_6
    return v3
.end method

.method private native greylist-max-o _checkRightsStatus(ILjava/lang/String;I)I
.end method

.method private native greylist-max-o _closeConvertSession(II)Landroid/drm/DrmConvertedStatus;
.end method

.method private native greylist-max-o _convertData(II[B)Landroid/drm/DrmConvertedStatus;
.end method

.method private native greylist-max-o _getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;
.end method

.method private native greylist-max-o _getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;
.end method

.method private native greylist-max-o _getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native greylist-max-o _getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;
.end method

.method private native greylist-max-o _getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method private native greylist-max-o _initialize()I
.end method

.method private native greylist-max-o _installDrmEngine(ILjava/lang/String;)V
.end method

.method private native greylist-max-o _openConvertSession(ILjava/lang/String;)I
.end method

.method private native greylist-max-o _processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
.end method

.method private native greylist-max-o _release(I)V
.end method

.method private native greylist-max-o _removeAllRights(I)I
.end method

.method private native greylist-max-o _removeRights(ILjava/lang/String;)I
.end method

.method private native blacklist _saveIMEI(Ljava/lang/String;)Z
.end method

.method private native greylist-max-o _saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native blacklist _saveSRL(Ljava/lang/String;)Z
.end method

.method private native blacklist _setFD(ILjava/io/FileDescriptor;)I
.end method

.method private native greylist-max-o _setListeners(ILjava/lang/Object;)V
.end method

.method private greylist-max-o convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1430
    const/4 v0, 0x0

    .line 1431
    .local v0, "path":Ljava/lang/String;
    if-eqz p1, :cond_8

    .line 1432
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1433
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1434
    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 1437
    :cond_0
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1440
    :cond_1
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1441
    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 1442
    .local v5, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1444
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v9, v3

    .line 1446
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1450
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1451
    .local v2, "pathIndex":I
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 1456
    .end local v2    # "pathIndex":I
    if-eqz v9, :cond_2

    .line 1457
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1460
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_3

    .line 1447
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given Uri could not be found in media store"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/drm/DrmManagerClient;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1456
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/drm/DrmManagerClient;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1452
    :catch_0
    move-exception v2

    .line 1453
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/drm/DrmManagerClient;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1456
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/drm/DrmManagerClient;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_0
    if-eqz v9, :cond_4

    .line 1457
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1459
    :cond_4
    throw v2

    .line 1461
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given Uri scheme is not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1438
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1435
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1464
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_8
    :goto_3
    return-object v0
.end method

.method private greylist-max-o createEventThreads()V
    .locals 2

    .line 1518
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-nez v0, :cond_0

    .line 1519
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.InfoHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 1520
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1521
    new-instance v0, Landroid/drm/DrmManagerClient$InfoHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$InfoHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 1523
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.EventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 1524
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1525
    new-instance v0, Landroid/drm/DrmManagerClient$EventHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$EventHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 1527
    :cond_0
    return-void
.end method

.method private greylist-max-o createListeners()V
    .locals 2

    .line 1530
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Landroid/drm/DrmManagerClient;->_setListeners(ILjava/lang/Object;)V

    .line 1531
    return-void
.end method

.method private blacklist getErrorType(ILandroid/drm/DrmInfoStatus;)I
    .locals 4
    .param p1, "infoType"    # I
    .param p2, "infoStatus"    # Landroid/drm/DrmInfoStatus;

    .line 1382
    const/4 v0, -0x1

    .line 1384
    .local v0, "error":I
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1389
    :pswitch_0
    const-string v1, "DrmManagerClient"

    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/drm/DrmInfoStatus;->mimeType:Ljava/lang/String;

    .line 1390
    const-string/jumbo v3, "video/wvm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p2, Landroid/drm/DrmInfoStatus;->statusCode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1396
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getErrorType infoStatus.statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/drm/DrmInfoStatus;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget v0, p2, Landroid/drm/DrmInfoStatus;->statusCode:I

    goto :goto_1

    .line 1392
    :cond_1
    :goto_0
    const-string v2, "getErrorType return TYPE_PROCESS_DRM_INFO_FAILED becauseof widevine or STATUS_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const/16 v0, 0x7d6

    .line 1401
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o getEventType(I)I
    .locals 1
    .param p1, "infoType"    # I

    .line 1367
    const/4 v0, -0x1

    .line 1369
    .local v0, "eventType":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1373
    :pswitch_0
    const/16 v0, 0x3ea

    .line 1376
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o notify(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 3
    .param p0, "thisReference"    # Ljava/lang/Object;
    .param p1, "uniqueId"    # I
    .param p2, "infoType"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 255
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient;

    .line 257
    .local v0, "instance":Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v1, :cond_0

    .line 258
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/drm/DrmManagerClient$InfoHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 260
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient$InfoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private blacklist releaseDvfsBooster()V
    .locals 2

    .line 672
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mDvfsHintManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mDvfsHintManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->isAcquired:Z

    .line 676
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "releaseDRMDVFS: done:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    return-void
.end method

.method private blacklist setDvfsBooster(Z)V
    .locals 7
    .param p1, "state"    # Z

    .line 652
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean v1, p0, Landroid/drm/DrmManagerClient;->isAcquired:Z

    if-nez v1, :cond_1

    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, "max_cpu_clock":I
    new-array v2, v0, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 655
    .local v2, "supportedBusFreqTable":[I
    iget-object v3, p0, Landroid/drm/DrmManagerClient;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-string v4, "DrmManagerClient"

    if-nez v3, :cond_0

    .line 656
    const-string/jumbo v3, "mDvfsHelper initialize"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v3, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    const/16 v5, 0x15

    const-string v6, "DRM_SECURE_PLAY"

    invoke-static {v3, v6, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    iput-object v3, p0, Landroid/drm/DrmManagerClient;->mDvfsHintManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 658
    if-eqz v3, :cond_0

    .line 659
    const/16 v5, 0x578

    invoke-virtual {v3, v5}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 662
    :cond_0
    iget-object v3, p0, Landroid/drm/DrmManagerClient;->mDvfsHintManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v3, :cond_1

    .line 663
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 664
    const-string/jumbo v3, "mDvfsHintManager acquired "

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->isAcquired:Z

    .line 669
    .end local v1    # "max_cpu_clock":I
    .end local v2    # "supportedBusFreqTable":[I
    :cond_1
    return-void
.end method

.method private static blacklist sysfsWrite(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "out":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 704
    .local v1, "myfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 707
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 711
    nop

    .line 712
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 713
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 722
    nop

    .line 723
    const/4 v2, 0x1

    return v2

    .line 714
    :catch_0
    move-exception v2

    goto :goto_0

    .line 708
    :catch_1
    move-exception v2

    .line 709
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 710
    return v3

    .line 715
    .local v2, "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 717
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 720
    goto :goto_1

    .line 718
    :catch_2
    move-exception v4

    .line 719
    .local v4, "err":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 721
    .end local v4    # "err":Ljava/lang/Exception;
    :goto_1
    return v3

    .line 725
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    return v3
.end method


# virtual methods
.method public whitelist acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 18
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .line 857
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 862
    const/4 v3, 0x0

    .line 863
    .local v3, "lDrmInfo":Landroid/drm/DrmInfo;
    const/4 v4, 0x0

    .line 864
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 865
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 866
    .local v6, "DmFd":Ljava/io/FileDescriptor;
    const/4 v7, 0x0

    .line 867
    .local v7, "DcfFd":Ljava/io/FileDescriptor;
    const/4 v8, 0x0

    .line 869
    .local v8, "Fd":Ljava/io/FileDescriptor;
    const-string v0, "drm_path"

    invoke-virtual {v2, v0}, Landroid/drm/DrmInfoRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 870
    .local v9, "filepath":Ljava/lang/String;
    const-string v10, ""

    .line 873
    .local v10, "FD":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/drm/DrmInfoRequest;->getInfoType()I

    move-result v0

    const/4 v11, 0x7

    const-string v12, ".dcf"

    const-string v13, "FileDescriptorKey"

    const-string v14, "Exception the file "

    const-string v15, ".fl"

    move-object/from16 v16, v3

    .end local v3    # "lDrmInfo":Landroid/drm/DrmInfo;
    .local v16, "lDrmInfo":Landroid/drm/DrmInfo;
    const-string v3, ".dm"

    move-object/from16 v17, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v17, "fis":Ljava/io/FileInputStream;
    const-string v4, "DrmManagerClient"

    if-ne v0, v11, :cond_2

    .line 874
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 876
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v11, "OutFileDescriptorKey"

    if-eqz v0, :cond_0

    .line 878
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v0

    .line 879
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v6, v0

    .line 880
    invoke-virtual {v1, v6}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 881
    invoke-virtual {v2, v13, v10}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 883
    invoke-virtual {v9, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "Filename":Ljava/lang/String;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v13

    .line 885
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    move-object v7, v13

    .line 886
    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 887
    invoke-virtual {v2, v11, v10}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "Filename":Ljava/lang/String;
    goto :goto_0

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    goto/16 :goto_5

    .line 892
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v0

    .line 895
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v6, v0

    .line 896
    invoke-virtual {v1, v6}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 897
    invoke-virtual {v2, v13, v10}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 899
    invoke-virtual {v9, v15, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "Filename":Ljava/lang/String;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v13

    .line 901
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    move-object v7, v13

    .line 902
    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 903
    invoke-virtual {v2, v11, v10}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "Filename":Ljava/lang/String;
    goto :goto_1

    .line 904
    :catch_1
    move-exception v0

    .line 905
    .local v0, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    goto/16 :goto_5

    .line 909
    :cond_1
    const-string v0, "file extention is not dm or fl"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v11, v0

    .line 913
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v8, v0

    .line 914
    invoke-virtual {v1, v8}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 915
    invoke-virtual {v2, v13, v10}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 916
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object/from16 v11, v17

    .line 917
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    move-object/from16 v17, v11

    goto :goto_5

    .line 923
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 925
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v11, v0

    .line 926
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v8, v0

    .line 927
    invoke-virtual {v1, v8}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 928
    invoke-virtual {v2, v13, v10}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 931
    move-object/from16 v17, v11

    goto :goto_5

    .line 929
    :catch_4
    move-exception v0

    goto :goto_4

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object/from16 v11, v17

    .line 930
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v11

    .line 935
    .end local v0    # "e":Ljava/io/IOException;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :goto_5
    iget v0, v1, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {v1, v0, v2}, Landroid/drm/DrmManagerClient;->_acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v11

    .line 937
    .end local v16    # "lDrmInfo":Landroid/drm/DrmInfo;
    .local v11, "lDrmInfo":Landroid/drm/DrmInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/drm/DrmInfoRequest;->getInfoType()I

    move-result v0

    const/4 v13, 0x7

    if-ne v0, v13, :cond_a

    .line 938
    const-string v0, "_acquireDrmInfo TYPE_CONVERT_DRM_FILE"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    if-eqz v17, :cond_4

    .line 941
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 942
    :goto_6
    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_6

    .line 944
    :cond_4
    :goto_7
    if-eqz v5, :cond_5

    .line 946
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 947
    :goto_8
    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_8

    .line 949
    :cond_5
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_acquireDrmInfo TYPE_CONVERT_DRM_FILE "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v13, "status"

    invoke-virtual {v11, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {v11, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v14, "success"

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v14, "DM file delete fail"

    if-eqz v0, :cond_6

    .line 951
    const-string v0, "DM file delete DrmInfoRequest.SEM_SUCCESS"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 953
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 954
    .local v0, "uf":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 955
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v16

    .line 956
    .local v16, "delFlag":Z
    if-nez v16, :cond_6

    .line 957
    invoke-static {v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    .end local v0    # "uf":Ljava/io/File;
    .end local v16    # "delFlag":Z
    :cond_6
    invoke-virtual {v11, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v13, "fail"

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 963
    const-string v0, "dcf file delete DrmInfoRequest.SEM_FAIL"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    .line 965
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 966
    invoke-virtual {v9, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 967
    .local v3, "Filename":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 969
    .restart local v0    # "uf":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 970
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v12

    .line 971
    .local v12, "delFlag":Z
    if-nez v12, :cond_7

    .line 972
    invoke-static {v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .end local v0    # "uf":Ljava/io/File;
    .end local v3    # "Filename":Ljava/lang/String;
    .end local v12    # "delFlag":Z
    :cond_7
    goto :goto_b

    .line 976
    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 977
    invoke-virtual {v9, v15, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 978
    .restart local v3    # "Filename":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 980
    .restart local v0    # "uf":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 981
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v12

    .line 982
    .restart local v12    # "delFlag":Z
    if-nez v12, :cond_9

    .line 983
    invoke-static {v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .end local v0    # "uf":Ljava/io/File;
    .end local v3    # "Filename":Ljava/lang/String;
    .end local v12    # "delFlag":Z
    :cond_9
    goto :goto_b

    .line 991
    :cond_a
    if-eqz v17, :cond_b

    .line 993
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 994
    :goto_a
    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_a

    .line 997
    :cond_b
    :goto_b
    return-object v11

    .line 858
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "DmFd":Ljava/io/FileDescriptor;
    .end local v7    # "DcfFd":Ljava/io/FileDescriptor;
    .end local v8    # "Fd":Ljava/io/FileDescriptor;
    .end local v9    # "filepath":Ljava/lang/String;
    .end local v10    # "FD":Ljava/lang/String;
    .end local v11    # "lDrmInfo":Landroid/drm/DrmInfo;
    .end local v17    # "fis":Ljava/io/FileInputStream;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given drmInfoRequest is invalid/null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 2
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .line 1020
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1021
    .local v0, "drmInfo":Landroid/drm/DrmInfo;
    if-nez v0, :cond_0

    .line 1022
    const/16 v1, -0x7d0

    return v1

    .line 1024
    :cond_0
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    return v1
.end method

.method public whitelist canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 824
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 827
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 825
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 777
    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 782
    :cond_1
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_checkFDSupporting(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_5

    .line 788
    :cond_2
    const/4 v0, 0x0

    .line 789
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 790
    .local v1, "fis":Ljava/io/FileInputStream;
    const-string v2, ""

    .line 793
    .local v2, "FD":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 794
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 795
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v3}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 796
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4, v2, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 800
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 802
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 803
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 797
    :catch_1
    move-exception v3

    .line 798
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "DrmManagerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception the file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 800
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 802
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 806
    :cond_3
    :goto_1
    return v0

    .line 800
    :goto_2
    if-eqz v1, :cond_4

    .line 802
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 803
    :goto_3
    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_3

    .line 805
    :cond_4
    :goto_4
    throw v3

    .line 784
    .end local v0    # "result":Z
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "FD":Ljava/lang/String;
    :cond_5
    :goto_5
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 778
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkRightsStatus(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1169
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 1172
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkRightsStatus(Landroid/net/Uri;I)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .line 1233
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 1236
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 1158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist checkRightsStatus(Ljava/lang/String;I)I
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 1185
    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1190
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_checkFDSupporting(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v0

    return v0

    .line 1196
    :cond_0
    const/4 v0, 0x0

    .line 1197
    .local v0, "result":I
    const/4 v1, 0x0

    .line 1198
    .local v1, "fis":Ljava/io/FileInputStream;
    const-string v2, ""

    .line 1201
    .local v2, "FD":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 1202
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 1203
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v3}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1204
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4, v2, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 1208
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 1210
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1211
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 1208
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1205
    :catch_1
    move-exception v3

    .line 1206
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "DrmManagerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception the file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1208
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 1210
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1214
    :cond_1
    :goto_1
    return v0

    .line 1208
    :goto_2
    if-eqz v1, :cond_2

    .line 1210
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1211
    :goto_3
    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_3

    .line 1213
    :cond_2
    :goto_4
    throw v3

    .line 1186
    .end local v0    # "result":I
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "FD":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path or action is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 3

    .line 409
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 410
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 413
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 415
    :cond_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 417
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 419
    :cond_1
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 420
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 421
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 422
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 423
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 424
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_release(I)V

    .line 426
    :cond_2
    return-void
.end method

.method public whitelist closeConvertSession(I)Landroid/drm/DrmConvertedStatus;
    .locals 1
    .param p1, "convertId"    # I

    .line 1363
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_closeConvertSession(II)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method public whitelist convertData(I[B)Landroid/drm/DrmConvertedStatus;
    .locals 2
    .param p1, "convertId"    # I
    .param p2, "inputData"    # [B

    .line 1345
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1348
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_convertData(II[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0

    .line 1346
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given inputData should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist dpDRM(I)V
    .locals 3
    .param p1, "value"    # I

    .line 753
    const/4 v0, 0x1

    const-string v1, "DrmManagerClient"

    if-ne p1, v0, :cond_1

    .line 754
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->DRM_DISPLAYPORT_ENABLE:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/drm/DrmManagerClient;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const-string v0, "DRM_DISPLAYPORT_ENABLE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 757
    :cond_0
    const-string v0, "DRM_DISPLAYPORT_ENABLE failed. Error can be ignored"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :cond_1
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->DRM_DISPLAYPORT_ENABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/drm/DrmManagerClient;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    const-string v0, "DRM_DISPLAYPORT_DISABLE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 763
    :cond_2
    const-string v0, "DRM_DISPLAYPORT_DISABLE failed. Error can be ignored"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 386
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 390
    :cond_0
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 393
    nop

    .line 394
    return-void

    .line 392
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 393
    throw v0
.end method

.method public whitelist getAvailableDrmEngines()[Ljava/lang/String;
    .locals 4

    .line 482
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    move-result-object v0

    .line 483
    .local v0, "supportInfos":[Landroid/drm/DrmSupportInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v1, "descriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 486
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/drm/DrmSupportInfo;->getDescriprition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 490
    .local v2, "drmEngines":[Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public whitelist getAvailableDrmSupportInfo()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/drm/DrmSupportInfo;",
            ">;"
        }
    .end annotation

    .line 501
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .line 579
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 582
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 515
    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_checkFDSupporting(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0

    .line 526
    :cond_0
    const/4 v0, 0x0

    .line 527
    .local v0, "contentValues":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 528
    .local v1, "fis":Ljava/io/FileInputStream;
    const-string v2, ""

    .line 531
    .local v2, "FD":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 532
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 533
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v3}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 534
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4, v2, p2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 539
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 541
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 542
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 539
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 536
    :catch_1
    move-exception v3

    .line 537
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "DrmManagerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception the file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 541
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 545
    :cond_1
    :goto_1
    return-object v0

    .line 539
    :goto_2
    if-eqz v1, :cond_2

    .line 541
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 542
    :goto_3
    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_3

    .line 544
    :cond_2
    :goto_4
    throw v3

    .line 516
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "FD":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given usage or path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 1088
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1091
    :cond_1
    const-string v0, ""

    .line 1093
    .local v0, "path":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1097
    goto :goto_0

    .line 1094
    :catch_0
    move-exception v1

    .line 1096
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DrmManagerClient"

    const-string v3, "Given Uri could not be found in media store"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1089
    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 1038
    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1043
    :cond_1
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_checkFDSupporting(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_5

    .line 1049
    :cond_2
    const/4 v0, 0x0

    .line 1050
    .local v0, "result":I
    const/4 v1, 0x0

    .line 1051
    .local v1, "fis":Ljava/io/FileInputStream;
    const-string v2, ""

    .line 1054
    .local v2, "FD":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 1055
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 1056
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v3}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1058
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4, v2, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 1062
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 1064
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1065
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 1062
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1059
    :catch_1
    move-exception v3

    .line 1060
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "DrmManagerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception the file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1062
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 1064
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1068
    :cond_3
    :goto_1
    return v0

    .line 1062
    :goto_2
    if-eqz v1, :cond_4

    .line 1064
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1065
    :goto_3
    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_3

    .line 1067
    :cond_4
    :goto_4
    throw v3

    .line 1045
    .end local v0    # "result":I
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "FD":Ljava/lang/String;
    :cond_5
    :goto_5
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1039
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 594
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 597
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0

    .line 595
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 563
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0

    .line 564
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1144
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 1147
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 1109
    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1113
    const/4 v0, 0x0

    .line 1115
    .local v0, "mime":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1117
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 1118
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1120
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 1121
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v2, v4

    .line 1123
    :cond_0
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4, p1, v2}, Landroid/drm/DrmManagerClient;->_getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 1126
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    if-eqz v1, :cond_2

    .line 1128
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1129
    :goto_0
    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0

    .line 1126
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 1128
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1129
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    .line 1131
    :cond_1
    :goto_2
    throw v2

    .line 1124
    :catch_2
    move-exception v2

    .line 1126
    if-eqz v1, :cond_2

    .line 1128
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1133
    :cond_2
    :goto_3
    return-object v0

    .line 1110
    .end local v0    # "mime":Ljava/lang/String;
    .end local v1    # "is":Ljava/io/FileInputStream;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o installDrmEngine(Ljava/lang/String;)V
    .locals 3
    .param p1, "engineFilePath"    # Ljava/lang/String;

    .line 634
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_installDrmEngine(ILjava/lang/String;)V

    .line 639
    return-void

    .line 635
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given engineFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist openConvertSession(Ljava/lang/String;)I
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 1325
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_openConvertSession(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1326
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimeType should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 3
    .param p1, "drmInfo"    # Landroid/drm/DrmInfo;

    .line 837
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    const/16 v0, -0x7d0

    .line 841
    .local v0, "result":I
    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v1, :cond_1

    .line 842
    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 843
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v0, v2

    .line 845
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return v0

    .line 838
    .end local v0    # "result":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmInfo is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->close()V

    .line 434
    return-void
.end method

.method public whitelist removeAllRights()I
    .locals 3

    .line 1306
    const/16 v0, -0x7d0

    .line 1307
    .local v0, "result":I
    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v1, :cond_1

    .line 1308
    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1309
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v0, v2

    .line 1311
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return v0
.end method

.method public whitelist removeRights(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1293
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 1296
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeRights(Ljava/lang/String;)I
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .line 1247
    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1252
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_checkFDSupporting(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1258
    :cond_0
    const/4 v0, 0x0

    .line 1259
    .local v0, "result":I
    const/4 v1, 0x0

    .line 1260
    .local v1, "fis":Ljava/io/FileInputStream;
    const-string v2, ""

    .line 1263
    .local v2, "FD":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 1264
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 1265
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v3}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1266
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4, v2}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 1270
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 1272
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1273
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 1270
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1267
    :catch_1
    move-exception v3

    .line 1268
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "DrmManagerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception the file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1270
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 1272
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1276
    :cond_1
    :goto_1
    return v0

    .line 1270
    :goto_2
    if-eqz v1, :cond_2

    .line 1272
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1273
    :goto_3
    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_3

    .line 1275
    :cond_2
    :goto_4
    throw v3

    .line 1248
    .end local v0    # "result":I
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "FD":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist saveDevID()V
    .locals 5

    .line 685
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "saveDevID : Checking "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "roSerial":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/drm/DrmManagerClient;->_saveSRL(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 688
    const-string v2, "SRL Write save failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 692
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 693
    .local v2, "tmgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, "deviceID":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/drm/DrmManagerClient;->_saveIMEI(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 695
    const-string v4, "devID save failed"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v2    # "tmgr":Landroid/telephony/TelephonyManager;
    .end local v3    # "deviceID":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 698
    :cond_2
    const-string v2, "Permission denied:You do not have READ_PHONE_STATE permission ."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_0
    return-void
.end method

.method public whitelist saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "drmRights"    # Landroid/drm/DrmRights;
    .param p2, "rightsPath"    # Ljava/lang/String;
    .param p3, "contentPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    invoke-virtual {p1}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/drm/DrmUtils;->writeToFile(Ljava/lang/String;[B)V

    .line 623
    :cond_0
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->_saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 618
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmRights or contentPath is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "FD":I
    iget v1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v1, p1}, Landroid/drm/DrmManagerClient;->_setFD(ILjava/io/FileDescriptor;)I

    move-result v0

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileDescriptor["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized whitelist setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V
    .locals 0
    .param p1, "errorListener"    # Landroid/drm/DrmManagerClient$OnErrorListener;

    monitor-enter p0

    .line 469
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 470
    if-eqz p1, :cond_0

    .line 471
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    .end local p0    # "this":Landroid/drm/DrmManagerClient;
    :cond_0
    monitor-exit p0

    return-void

    .line 468
    .end local p1    # "errorListener":Landroid/drm/DrmManagerClient$OnErrorListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V
    .locals 0
    .param p1, "eventListener"    # Landroid/drm/DrmManagerClient$OnEventListener;

    monitor-enter p0

    .line 456
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 457
    if-eqz p1, :cond_0

    .line 458
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    .end local p0    # "this":Landroid/drm/DrmManagerClient;
    :cond_0
    monitor-exit p0

    return-void

    .line 455
    .end local p1    # "eventListener":Landroid/drm/DrmManagerClient$OnEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V
    .locals 0
    .param p1, "infoListener"    # Landroid/drm/DrmManagerClient$OnInfoListener;

    monitor-enter p0

    .line 443
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 444
    if-eqz p1, :cond_0

    .line 445
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .end local p0    # "this":Landroid/drm/DrmManagerClient;
    :cond_0
    monitor-exit p0

    return-void

    .line 442
    .end local p1    # "infoListener":Landroid/drm/DrmManagerClient$OnInfoListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist toggleCPUBoost(IZ)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "boostON"    # Z

    .line 735
    if-lez p1, :cond_1

    .line 736
    const-string v0, "DrmManagerClient"

    if-eqz p2, :cond_0

    .line 737
    const-string v1, "SECURE_PLAYBACK_START"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->setDvfsBooster(Z)V

    goto :goto_0

    .line 740
    :cond_0
    const-string v1, "SECURE_PLAYBACK_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->releaseDvfsBooster()V

    .line 745
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
