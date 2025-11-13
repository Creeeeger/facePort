.class public final Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(IIJ)V
    .locals 0

    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    iget p4, p3, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    if-eq p4, p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Finished with status "

    const-string p4, "StorageWizardMigrateProgress"

    invoke-static {p2, p1, p4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x64

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.systemui"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    iget-object p2, p2, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    const p2, 0x7f141240

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p3, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setCurrentProgress(I)V

    :goto_1
    return-void
.end method
