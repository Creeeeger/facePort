.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startObserver() ] path = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileListObserver"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mFileObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mFileObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/PageControllerInterface;

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    iput-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;->FILE_OBSERVER_MAPPER:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;

    iput-object v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;->mStorageObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;

    if-eqz v0, :cond_4

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    iget-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    iget-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mMediaProviderObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object p0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    :cond_4
    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mFileObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;

    goto :goto_1

    :cond_5
    const-string/jumbo p0, "startObserver() ] - mControllerWeakReference.get() is null"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
