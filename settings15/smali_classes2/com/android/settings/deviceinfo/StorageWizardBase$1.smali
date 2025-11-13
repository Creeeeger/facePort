.class public final Lcom/android/settings/deviceinfo/StorageWizardBase$1;
.super Landroid/os/storage/StorageEventListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardBase;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardBase;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardBase;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    iget-object v0, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    iget-object p1, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardBase;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
