.class public final Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->checkEncryptionAndUnmount(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Z)V

    return-void
.end method
