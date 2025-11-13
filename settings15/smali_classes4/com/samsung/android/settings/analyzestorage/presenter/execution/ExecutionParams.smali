.class public final Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDialog:Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;

.field public mFileOperationArgs:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;

.field public mInstanceId:I

.field public mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

.field public mProgressListener:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mInstanceId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mContext:Landroid/content/Context;

    return-void
.end method
