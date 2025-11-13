.class public abstract Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;",
        "Landroidx/fragment/app/DialogFragment;",
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
.field public baseDialog:Landroidx/appcompat/app/AlertDialog;

.field public baseFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public callback:Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;

.field public final viewModel$delegate:Lkotlin/Lazy;

.field public viewModelKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog$viewModel$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog$viewModel$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->viewModel$delegate:Lkotlin/Lazy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->viewModelKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->callback:Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->clearDataFromViewModel()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public clearDataFromViewModel()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getViewModel()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->viewModelKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "key"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;->dialogDataMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract createDialog$2()Landroidx/appcompat/app/AlertDialog;
.end method

.method public final getBaseContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog$getOnKeyListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog$getOnKeyListener$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;)V

    return-object v0
.end method

.method public final getViewModel()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;

    return-object p0
.end method

.method public isCanceledOnTouchOutside()Z
    .locals 0

    instance-of p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatProgressDialogFragment;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "AbsDialog"

    const-string/jumbo v0, "onCancel"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->cancel()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->restoreStateOnCreate(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->createDialog$2()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->isCanceledOnTouchOutside()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->viewModelKey:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getViewModel()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->viewModelKey:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;->dialogDataMap:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel$DialogViewData;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel$DialogViewData;->dialogCallback:Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->callback:Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->setDialogAnchorView()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->setDialogAnchorView()V

    :goto_1
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->callback:Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public restoreStateOnCreate(Landroid/os/Bundle;)V
    .locals 0

    const-string/jumbo p0, "savedInstanceState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setDialogAnchorView()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getViewModel()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->viewModelKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->callback:Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;->dialogDataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "putData, key : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", callback : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DialogViewModel"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;->dialogDataMap:Ljava/util/Map;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel$DialogViewData;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel$DialogViewData;-><init>(Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, p2, v1}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final showDialog(Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->callback:Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
