.class public final synthetic Lcom/android/settings/deviceinfo/storage/DiskInitFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/storage/DiskInitFragment;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/storage/DiskInitFragment;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/DiskInitFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/storage/DiskInitFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/DiskInitFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/DiskInitFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/DiskInitFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/deviceinfo/storage/DiskInitFragment;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/DiskInitFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/DiskInitFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
