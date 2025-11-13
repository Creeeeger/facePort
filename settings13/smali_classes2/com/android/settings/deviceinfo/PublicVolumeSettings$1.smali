.class Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;
.super Ljava/lang/Object;
.source "PublicVolumeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PublicVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 274
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->-$$Nest$fgetmVolume(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->checkEncryptionAndUnmount(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Z)V

    return-void
.end method
