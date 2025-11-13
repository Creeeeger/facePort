.class final Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;

    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;I)V

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnMainThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$StorageOperationManagerHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->sStorageMountInfoList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;IILcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$$ExternalSyntheticLambda0;->run()V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;

    const/16 v2, 0x3c

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;I)V

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnMainThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$initProgress$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;

    const/16 v3, 0x64

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment$updateProgress$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;I)V

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnMainThread(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
