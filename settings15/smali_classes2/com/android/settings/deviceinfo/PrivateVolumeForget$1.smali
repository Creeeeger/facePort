.class public final Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeForget;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeForget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.storage.extra.FS_UUID"

    invoke-static {v0, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "forget_confirm"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
