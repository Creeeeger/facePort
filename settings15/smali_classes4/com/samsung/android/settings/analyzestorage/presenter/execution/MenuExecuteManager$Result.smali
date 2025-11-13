.class public final Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCurrentCompletedCount:I

.field public mErrorType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

.field public mExtra:Landroid/os/Bundle;

.field public mIsSuccess:Z

.field public mMenuType:I

.field public mNeedRefresh:Z

.field public final mPackageSuccessList:Ljava/util/List;

.field public mSrcPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mExtra:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mPackageSuccessList:Ljava/util/List;

    return-void
.end method
