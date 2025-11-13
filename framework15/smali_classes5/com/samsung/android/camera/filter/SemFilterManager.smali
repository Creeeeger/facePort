.class public Lcom/samsung/android/camera/filter/SemFilterManager;
.super Ljava/lang/Object;
.source "SemFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;,
        Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;
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
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.5"
    .end annotation
.end field

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
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.5"
    .end annotation
.end field

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

    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.filterprovider/myfilter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->MYFILTER_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyAdd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiAddUri:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyDelete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiDeleteUri:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyLocaleChange"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiLocaleChangeUri:Landroid/net/Uri;

    const-string/jumbo v6, "version"

    const-string/jumbo v7, "title_id"

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "filename"

    const-string/jumbo v3, "package_name"

    const-string/jumbo v4, "vendor"

    const-string v5, "category"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemFilter ContentObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    :cond_0
    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$1;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$1;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$2;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$2;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$3;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$3;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->registerObserver()V

    return-void
.end method

.method private blacklist loadFilter()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "[SemFilterManager] loadFilter()"

    const-string v2, "SemFilterManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    iget-object v0, v1, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_URI:Landroid/net/Uri;

    sget-object v6, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_1

    :try_start_0
    const-string v0, "[SemFilterManager] loadFilter() cursor is null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v3

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    :cond_2
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    if-nez v0, :cond_6

    iget-object v7, v1, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    move-object v0, v7

    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/4 v7, 0x6

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v8

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v7, "getResourcesForApplication or getString encounter exception"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v14

    move-object v8, v7

    move-object v0, v8

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v15, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "filterFullName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "filterIdentifier : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "filterName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v6

    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x4

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    new-instance v17, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    move-object/from16 v6, v17

    move-object v7, v11

    move-object v8, v14

    move-object v9, v10

    move-object/from16 v18, v10

    move-object v10, v0

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v6, v17

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    goto/16 :goto_0

    :cond_9
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    goto/16 :goto_0

    :cond_a
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    goto/16 :goto_0

    :cond_b
    move-object/from16 v19, v11

    goto/16 :goto_0

    :cond_c
    if-eqz v4, :cond_d

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_d
    return-object v3

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_e

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_2
    throw v2
.end method

.method private blacklist registerObserver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiAddUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiDeleteUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiLocaleChangeUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist unRegisterObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public whitelist close()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "SemFilterManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopHandler : interrupted - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    throw v0

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->unRegisterObserver()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->close()V

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

    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->loadFilter()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAvailableFilters(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-instance v9, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "com.samsung.android.provider"

    const-string v3, "Food"

    const/16 v4, 0x1c2

    const-string v5, "Food"

    const-string v6, "SAMSUNG_MOBILE"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "com.samsung.android.provider"

    const-string v4, "CustomColor"

    const/16 v5, 0x1a9

    const-string v6, "Custom Color"

    const-string v7, "SAMSUNG_MOBILE"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableMyFilters()Ljava/util/List;

    move-result-object v1

    return-object v1

    :sswitch_3
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "com.samsung.android.provider"

    const-string v4, "SelfieFaceCorrection"

    const/16 v5, 0x1bf

    const-string v6, "Selfie Face Correction"

    const-string v7, "SAMSUNG_MOBILE"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const-string v3, "com.samsung.android.provider"

    const-string v4, "CustomColor"

    const/16 v5, 0x1a9

    const-string v6, "Custom Color"

    const-string v7, "SAMSUNG_MOBILE"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v10, 0x0

    const-string v4, "com.samsung.android.provider"

    const-string v5, "Food"

    const/16 v6, 0x1c2

    const-string v7, "Food"

    const-string v8, "SAMSUNG_MOBILE"

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableFilters()Ljava/util/List;

    move-result-object v1

    return-object v1

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x65 -> :sswitch_3
        0x66 -> :sswitch_2
        0x1a9 -> :sswitch_1
        0x1c2 -> :sswitch_0
    .end sparse-switch
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

    const-string v0, "Unnamed filter"

    const-string v1, "[SemFilterManager] getAvailableMyFilters()"

    const-string v2, "SemFilterManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/camera/filter/SemFilterManager;->MYFILTER_URI:Landroid/net/Uri;

    const-string/jumbo v10, "filter_order"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    if-nez v3, :cond_1

    const-string v0, "[SemFilterManager] getAvailableMyFilters() cursor is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz v3, :cond_5

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    if-eqz v13, :cond_2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "myFilterName : "

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

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :goto_3
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public whitelist getFilter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/camera/filter/SemFilter;
    .locals 27

    move/from16 v0, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFilter : type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  filterName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v8, p2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  filterFileName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filterPackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemFilterManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1c2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a9

    if-eq v0, v1, :cond_1

    if-eqz v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "There\'s no filter file"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_1
    sparse-switch v0, :sswitch_data_0

    new-instance v11, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    const-string v6, ""

    move-object v1, v11

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v11

    :sswitch_0
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v12, "com.samsung.android.provider"

    const-string v13, "Food"

    const/16 v14, 0x1c2

    const-string v15, "Food"

    const-string v16, "SAMSUNG_MOBILE"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-object v1

    :sswitch_1
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v20, "com.samsung.android.provider"

    const-string v21, "CustomColor"

    const/16 v22, 0x1a9

    const-string v23, "Custom Color"

    const-string v24, "SAMSUNG_MOBILE"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v26}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-object v1

    :sswitch_2
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MYFILTER]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v12, ""

    const-string v16, ""

    move-object v11, v1

    move-object/from16 v13, p2

    move-object/from16 v15, p2

    invoke-direct/range {v11 .. v18}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v1

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v7, 0x0

    const/4 v13, 0x0

    const-string v6, ""

    move-object v1, v12

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object v4, v11

    move-object/from16 v5, p2

    move v8, v13

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v12

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0x66 -> :sswitch_2
        0x1a9 -> :sswitch_1
        0x1c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist setFilterCallback(Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    iput-object p2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method
