.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu$getParams$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;


# instance fields
.field public final dialog:Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu;->menuExecute:Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;

    if-eqz p1, :cond_0

    const/16 v0, 0x15e

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->getProgressDialog(I)Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu$getParams$1;->dialog:Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;

    return-void
.end method


# virtual methods
.method public final onFinishProgress()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu$getParams$1;->dialog:Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public final onPrepareProgress(Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu$getParams$1;->dialog:Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;->onPrepareProgress(Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;)V

    :cond_0
    return-void
.end method
