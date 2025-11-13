.class public final synthetic Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm$$ExternalSyntheticLambda0;->f$3:Z

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "format_forget_uuid"

    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "format_private"

    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
