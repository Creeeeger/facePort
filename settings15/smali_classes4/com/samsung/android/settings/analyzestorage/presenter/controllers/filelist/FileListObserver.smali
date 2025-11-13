.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;


# instance fields
.field public mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

.field public final mContext:Ljava/lang/ref/WeakReference;

.field public final mControllerWeakReference:Ljava/lang/ref/WeakReference;

.field public mFileObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;

.field public mIsPaused:Z

.field public mNeedRefresh:Z

.field public final mObserverHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/PageControllerInterface;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mObserverHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver$1;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mContext:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onContentChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mIsPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mNeedRefresh:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;->onContentChanged()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/PageControllerInterface;

    invoke-interface {p0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/PageControllerInterface;->refresh(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final removeObserver()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mFileObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;->mStorageObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mMediaProviderObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;

    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, v3, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver$MediaProviderObserver;->mContentResolver:Landroid/content/ContentResolver;

    :cond_0
    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_1
    iput-object v1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mUpdaterListener:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    iput-object v1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/observer/CategoryContentObserver;->mContext:Landroid/content/Context;

    :cond_2
    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;->mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mFileObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/FileObserverManager;

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    return-void
.end method
