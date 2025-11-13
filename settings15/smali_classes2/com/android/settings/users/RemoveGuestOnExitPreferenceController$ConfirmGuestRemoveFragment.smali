.class public final Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfirmGuestRemoveFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mEnabling:Z

.field public mGuestUserId:I

.field public mHandler:Landroid/os/Handler;

.field public mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x24f

    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    sget-object p2, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->TAG:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p0, "Unable to get user manager service"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mGuestUserId:I

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mEnabling:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Couldn\'t mark the guest for deletion for user "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget p2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->removeUser(I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mEnabling:Z

    invoke-static {p1, p2}, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->-$$Nest$smsetChecked(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mEnabling:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Removing guest user ... failed, id="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mGuestUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "enabling"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mEnabling:Z

    const-string v1, "guestUserId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mGuestUserId:I

    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f141ea2

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v1, 0x7f141ea1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const v1, 0x7f141101

    invoke-virtual {p1, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    new-instance p1, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "guestUserId"

    iget p0, p0, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController$ConfirmGuestRemoveFragment;->mGuestUserId:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
