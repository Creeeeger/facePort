.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/controllers/PageControllerInterface;
.implements Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$ResultListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInstanceId:I

.field public mIsCleared:Z

.field public final mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

.field public mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

.field public mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

.field public mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    const-string v0, "AbsPageController"

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mIsCleared:Z

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->createListItemHandler()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    return-void
.end method


# virtual methods
.method public createListItemHandler()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;
    .locals 0

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;-><init>()V

    return-object p0
.end method

.method public isFileListController()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCleared()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onCleared"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mIsCleared:Z

    return-void
.end method

.method public onResult(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V
    .locals 0

    return-void
.end method
