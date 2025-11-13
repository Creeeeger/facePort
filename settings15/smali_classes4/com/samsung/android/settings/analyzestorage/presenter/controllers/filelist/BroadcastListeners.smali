.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCachedFilesChanged:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

.field public final mContext:Ljava/lang/ref/WeakReference;

.field public final mControllerWeakReference:Ljava/lang/ref/WeakReference;

.field public final mLocaleChangedBroadcastReceiver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

.field public final mNeedRefreshListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

.field public mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

.field public final mStorageChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

.field public final mStorageEjectListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$1;

.field public final mTimeSetBroadcastReceiver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mStorageChangeListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mStorageEjectListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$1;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mTimeSetBroadcastReceiver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mLocaleChangedBroadcastReceiver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mCachedFilesChanged:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mNeedRefreshListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mContext:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    return-object p0
.end method
