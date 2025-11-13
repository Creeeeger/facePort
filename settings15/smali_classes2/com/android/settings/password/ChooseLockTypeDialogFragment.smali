.class public Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

.field public mController:Lcom/android/settings/password/ChooseLockGenericController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3de

    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ScreenLockType;

    invoke-interface {p1, p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;->onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V

    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lcom/android/settings/password/ChooseLockGenericController$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/password/ChooseLockGenericController$Builder;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mHideInsecureScreenLockTypes:Z

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->build()Lcom/android/settings/password/ChooseLockGenericController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockGenericController;->getVisibleAndEnabledScreenLockTypes()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-direct {v2, p1, v1, v3}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/password/ChooseLockGenericController;)V

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    invoke-virtual {v0, v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    const p0, 0x7f142b78

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
