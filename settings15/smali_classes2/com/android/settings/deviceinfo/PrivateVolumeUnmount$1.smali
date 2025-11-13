.class public final Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
