.class public final Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

.field public final synthetic val$fsUuid:Ljava/lang/String;

.field public final synthetic val$storage:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->val$storage:Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->val$fsUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->val$storage:Landroid/os/storage/StorageManager;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->val$fsUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
