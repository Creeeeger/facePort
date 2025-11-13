.class public final Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;


# static fields
.field public static final sCallbackListener:Ljava/util/HashMap;

.field public static final sExecutionMap:Landroid/util/SparseArray;


# instance fields
.field public mResultListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$ResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->sCallbackListener:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->sExecutionMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v2, 0x154

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v2, 0x15e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v2, 0x186

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v2, 0x190

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v2, 0xd2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v2, 0x2ee

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;ILcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Ljava/util/List;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;

    invoke-direct {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;-><init>()V

    iget-boolean v1, p1, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;->mIsSuccess:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mIsSuccess:Z

    iget-boolean v1, p1, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;->mNeedRefresh:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mNeedRefresh:Z

    iput p2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mMenuType:I

    iget-object p2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mPackageSuccessList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;->mBundle:Landroid/os/Bundle;

    iput-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mExtra:Landroid/os/Bundle;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->ERROR_NONE:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    iput-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mErrorType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/ConvertManager;->sSaTypeToPageInfo:Landroid/util/SparseArray;

    if-eqz p3, :cond_0

    iget-object p1, p3, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iput-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mSrcPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    :cond_0
    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda7;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->mResultListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$ResultListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$ResultListener;->onResult(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V

    :cond_1
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->sCallbackListener:Ljava/util/HashMap;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->mResultListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$ResultListener;

    return-void
.end method
