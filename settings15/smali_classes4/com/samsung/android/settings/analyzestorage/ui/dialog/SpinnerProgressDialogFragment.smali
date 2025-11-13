.class public final Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;
.super Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;",
        "Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;",
        "",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final SPINNER_PROGRESS_DIALOG_TAG:Ljava/lang/String;

.field public textResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;->textResId:I

    const-string/jumbo v0, "spin_dialog"

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;->SPINNER_PROGRESS_DIALOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createDialog$2()Landroidx/appcompat/app/AlertDialog;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0071

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;->textResId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const v2, 0x7f0a0be7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;->textResId:I

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public final getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isCanceledOnTouchOutside()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onPrepareProgress(Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;->SPINNER_PROGRESS_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;->SPINNER_PROGRESS_DIALOG_TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "SpinnerProgressDialogFragment"

    const-string/jumbo p1, "onPrepareProgress - args is null"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string p0, "SpinnerProgressDialogFragment"

    const-string/jumbo v0, "onResume"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "text_id"

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;->textResId:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final restoreStateOnCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;->textResId:I

    return-void
.end method
