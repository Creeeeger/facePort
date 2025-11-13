.class public Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDialogFragmentCheckListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;

.field public mDialogFragmentListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " onCancel method switchchecked: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_switch_checked_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubScreenShowNotificationWarningFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    check-cast p1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onChanged(Z)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dialog_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mType:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0d0460

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a08fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f14253f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextDirection(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v2, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$1;-><init>(Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mType:I

    const v3, 0x7f14253b

    if-eqz v2, :cond_2

    const v4, 0x7f1422a9

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-ne v2, v1, :cond_0

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f142540

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    new-instance p1, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;I)V

    invoke-virtual {v1, v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1422a8

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v0, 0x7f1422a7

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;I)V

    invoke-virtual {p1, v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;I)V

    const p0, 0x7f1422a6

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f14253d

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v0, 0x7f14253c

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;I)V

    const v1, 0x7f14253e

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;I)V

    invoke-virtual {p1, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
