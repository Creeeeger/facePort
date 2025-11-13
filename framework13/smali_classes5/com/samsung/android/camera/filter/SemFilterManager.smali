.class public Lcom/samsung/android/camera/filter/SemFilterManager;
.super Ljava/lang/Object;
.source "SemFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;,
        Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;
    }
.end annotation


# static fields
.field private static final blacklist AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final blacklist BASE_URI:Landroid/net/Uri;

.field private static final blacklist FILTER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final blacklist FILTER_CATEGORY:Ljava/lang/String; = "category"

.field public static final whitelist FILTER_EVENT_ADD:I = 0x0

.field public static final whitelist FILTER_EVENT_DELETE:I = 0x1

.field public static final whitelist FILTER_EVENT_LOCALE_CHANGE:I = 0x2

.field public static final whitelist FILTER_EVENT_RESET:I = 0x3

.field private static final blacklist FILTER_FILE_NAME:Ljava/lang/String; = "filename"

.field private static final blacklist FILTER_NAME:Ljava/lang/String; = "name"

.field private static final blacklist FILTER_PACKAGE:Ljava/lang/String; = "com.samsung.android.provider.filterprovider"

.field private static final blacklist FILTER_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final blacklist FILTER_PROJECTION:[Ljava/lang/String;

.field private static final blacklist FILTER_TITLE:Ljava/lang/String; = "title"

.field private static final blacklist FILTER_TITLE_ID:Ljava/lang/String; = "title_id"

.field private static final blacklist FILTER_URI:Landroid/net/Uri;

.field private static final blacklist FILTER_VENDOR:Ljava/lang/String; = "vendor"

.field private static final blacklist FILTER_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist INDEX_FILTER_CATEGORY:I = 0x4

.field private static final blacklist INDEX_FILTER_FILE_NAME:I = 0x1

.field private static final blacklist INDEX_FILTER_NAME:I = 0x0

.field private static final blacklist INDEX_FILTER_PACKAGE_NAME:I = 0x2

.field private static final blacklist INDEX_FILTER_TITLE_ID:I = 0x6

.field private static final blacklist INDEX_FILTER_VENDOR:I = 0x3

.field private static final blacklist INDEX_FILTER_VERSION:I = 0x5

.field private static final blacklist MYFILTER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/myfilter"

.field private static final blacklist MYFILTER_SEPERATOR:Ljava/lang/String; = "[MYFILTER]"

.field private static final blacklist MYFILTER_URI:Landroid/net/Uri;

.field private static final blacklist SI_KEY_FILTER_VALUE_GS_NO_EFFECT:I = 0x190

.field private static final blacklist TAG:Ljava/lang/String; = "SemFilterManager"

.field private static final blacklist TYPE_EFFECT_CUSTOMCOLOR:I = 0x1a9

.field private static final blacklist TYPE_EFFECT_DISTORTION_CORRECTION:I = 0x1bf

.field private static final blacklist TYPE_EFFECT_FOOD:I = 0x1c2

.field public static final whitelist TYPE_FILTER_BASIC:I = 0x64

.field public static final whitelist TYPE_FILTER_EXTENDED:I = 0x65

.field public static final whitelist TYPE_FILTER_USER_GENERATED:I = 0x66

.field private static final blacklist notiAddUri:Landroid/net/Uri;

.field private static final blacklist notiDeleteUri:Landroid/net/Uri;

.field private static final blacklist notiLocaleChangeUri:Landroid/net/Uri;


# instance fields
.field private blacklist mCallbackHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFilterAddObserver:Landroid/database/ContentObserver;

.field private blacklist mFilterDeleteObserver:Landroid/database/ContentObserver;

.field private blacklist mLocaleChangeObserver:Landroid/database/ContentObserver;

.field private blacklist mObserverHandler:Landroid/os/Handler;

.field private blacklist mObserverHandlerThread:Landroid/os/HandlerThread;

.field blacklist mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackHandler(Lcom/samsung/android/camera/filter/SemFilterManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 8

    .line 90
    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->BASE_URI:Landroid/net/Uri;

    .line 93
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_URI:Landroid/net/Uri;

    .line 96
    const-string v0, "content://com.samsung.android.provider.filterprovider/myfilter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->MYFILTER_URI:Landroid/net/Uri;

    .line 98
    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyAdd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiAddUri:Landroid/net/Uri;

    .line 99
    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyDelete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiDeleteUri:Landroid/net/Uri;

    .line 100
    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyLocaleChange"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiLocaleChangeUri:Landroid/net/Uri;

    .line 121
    const-string v1, "name"

    const-string v2, "filename"

    const-string/jumbo v3, "package_name"

    const-string/jumbo v4, "vendor"

    const-string v5, "category"

    const-string/jumbo v6, "version"

    const-string/jumbo v7, "title_id"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    .line 125
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    .line 126
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    .line 127
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    .line 128
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    .line 129
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    .line 130
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    .line 145
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    .line 156
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemFilter ContentObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    .line 157
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 158
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    .line 160
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/camera/filter/SemFilterManager$1;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    .line 178
    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$2;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$2;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    .line 196
    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$3;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$3;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->registerObserver()V

    .line 215
    return-void
.end method

.method private blacklist loadFilter()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 348
    move-object/from16 v1, p0

    const-string v2, "SemFilterManager"

    const-string v0, "[SemFilterManager] loadFilter()"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 351
    .local v3, "FilterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/camera/filter/SemFilter;>;"
    const/4 v4, 0x0

    .line 353
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_URI:Landroid/net/Uri;

    sget-object v7, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    .line 354
    if-nez v4, :cond_1

    .line 355
    const-string v0, "[SemFilterManager] loadFilter() cursor is null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    nop

    .line 401
    if-eqz v4, :cond_0

    .line 402
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_0
    return-object v3

    .line 359
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 360
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 361
    .local v13, "filterName":Ljava/lang/String;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    goto :goto_0

    .line 364
    :cond_2
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 365
    .local v14, "filterFullName":Ljava/lang/String;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    goto :goto_0

    .line 368
    :cond_3
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 369
    .local v15, "packageName":Ljava/lang/String;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 370
    goto :goto_0

    .line 375
    :cond_4
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 376
    .local v0, "resources":Landroid/content/res/Resources;
    const/4 v6, 0x6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 377
    .local v6, "resId":I
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v6    # "resId":I
    .local v7, "filterTitle":Ljava/lang/String;
    move-object v0, v7

    goto :goto_1

    .line 378
    .end local v7    # "filterTitle":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "getResourcesForApplication or getString encounter exception"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    move-object v6, v13

    move-object v7, v6

    move-object v0, v7

    .line 384
    .local v0, "filterTitle":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v14, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    .line 385
    .local v16, "filterIdentifier":Ljava/lang/String;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 386
    goto :goto_0

    .line 388
    :cond_5
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    .line 389
    .local v17, "filterVendor":Ljava/lang/String;
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 390
    goto/16 :goto_0

    .line 392
    :cond_6
    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 393
    .local v11, "filterCategory":I
    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 395
    .local v12, "filterVersion":I
    new-instance v18, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    move-object/from16 v5, v18

    move-object v6, v15

    move-object v7, v13

    move-object/from16 v8, v16

    move-object v9, v0

    move-object/from16 v10, v17

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v5, v18

    .line 396
    .local v5, "filter":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 397
    nop

    .end local v0    # "filterTitle":Ljava/lang/String;
    .end local v5    # "filter":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v11    # "filterCategory":I
    .end local v12    # "filterVersion":I
    .end local v13    # "filterName":Ljava/lang/String;
    .end local v14    # "filterFullName":Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "filterIdentifier":Ljava/lang/String;
    .end local v17    # "filterVendor":Ljava/lang/String;
    goto/16 :goto_0

    .line 401
    :cond_7
    if-eqz v4, :cond_8

    .line 402
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 401
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 398
    :catch_1
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_8

    .line 402
    goto :goto_2

    .line 404
    :cond_8
    :goto_3
    return-object v3

    .line 401
    :goto_4
    if-eqz v4, :cond_9

    .line 402
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_9
    throw v0
.end method

.method private blacklist registerObserver()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiAddUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiDeleteUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiLocaleChangeUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 236
    return-void
.end method

.method private blacklist unRegisterObserver()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 249
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    .line 250
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    .line 251
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    .line 252
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->unRegisterObserver()V

    .line 230
    return-void
.end method

.method public blacklist getAvailableFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->loadFilter()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAvailableFilters(I)Ljava/util/List;
    .locals 12
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, "FilterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/camera/filter/SemFilter;>;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableMyFilters()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 268
    :pswitch_1
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/16 v5, 0x1bf

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "com.samsung.android.provider"

    const-string v4, "SelfieFaceCorrection"

    const-string v6, "Selfie Face Correction"

    const-string v7, "SAMSUNG_MOBILE"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 269
    .local v1, "selfieFaceCorrection":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v10, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/16 v5, 0x1a9

    const-string v3, "com.samsung.android.provider"

    const-string v4, "CustomColor"

    const-string v6, "Custom Color"

    const-string v7, "SAMSUNG_MOBILE"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 272
    .local v2, "customcolorFilter":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v11, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/16 v6, 0x1c2

    const/4 v10, 0x0

    const-string v4, "com.samsung.android.provider"

    const-string v5, "Food"

    const-string v7, "Food"

    const-string v8, "SAMSUNG_MOBILE"

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 275
    .local v3, "foodFilter":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    goto :goto_0

    .line 279
    .end local v1    # "selfieFaceCorrection":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v2    # "customcolorFilter":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v3    # "foodFilter":Lcom/samsung/android/camera/filter/SemFilter;
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableFilters()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 287
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAvailableMyFilters()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 299
    const-string v0, "Unnamed filter"

    const-string v1, "SemFilterManager"

    const-string v2, "[SemFilterManager] getAvailableMyFilters()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v2, "MyFilterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/camera/filter/SemFilter;>;"
    const/4 v3, 0x0

    .line 303
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/camera/filter/SemFilterManager;->MYFILTER_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "filter_order"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 304
    if-nez v3, :cond_1

    .line 305
    const-string v0, "[SemFilterManager] getAvailableMyFilters() cursor is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    if-eqz v3, :cond_0

    .line 330
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_0
    return-object v0

    .line 309
    :cond_1
    if-eqz v3, :cond_5

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 311
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 313
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "myFilterName":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 315
    goto :goto_0

    .line 317
    :cond_3
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    .line 318
    .local v13, "myFilterFileName":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 319
    goto :goto_0

    .line 320
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "myFilterName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", myFilterFileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v14, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const-string v6, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MYFILTER]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v14

    move-object v7, v4

    move-object v9, v4

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v5, v14

    .line 322
    .local v5, "Myfilter":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    nop

    .end local v4    # "myFilterName":Ljava/lang/String;
    .end local v5    # "Myfilter":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v13    # "myFilterFileName":Ljava/lang/String;
    goto :goto_0

    .line 329
    :cond_5
    if-eqz v3, :cond_6

    .line 330
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 329
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_6

    .line 330
    goto :goto_1

    .line 332
    :cond_6
    :goto_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 329
    :goto_3
    if-eqz v3, :cond_7

    .line 330
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_7
    throw v0
.end method

.method public whitelist setFilterCallback(Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 415
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    .line 416
    iput-object p2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    .line 417
    return-void
.end method
