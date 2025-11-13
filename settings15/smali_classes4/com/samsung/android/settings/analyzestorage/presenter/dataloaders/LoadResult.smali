.class public final Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public appDataList:Ljava/util/List;

.field public data:Ljava/util/List;

.field public errorType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

.field public final extras:Landroid/os/Bundle;

.field public groupInfo:Landroid/os/Bundle;

.field public loadExecutionId:I

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getAppDataList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->appDataList:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "appDataList"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
