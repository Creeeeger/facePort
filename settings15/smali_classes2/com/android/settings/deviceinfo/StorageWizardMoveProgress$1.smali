.class public final Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(IIJ)V
    .locals 0

    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    iget p3, p3, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    if-eq p3, p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "Finished with status "

    const-string p3, "StorageWizardMoveProgress"

    invoke-static {p2, p1, p3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x64

    if-eq p2, p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    const/4 p3, -0x8

    if-eq p2, p3, :cond_5

    const/4 p3, -0x5

    if-eq p2, p3, :cond_4

    const/4 p3, -0x3

    if-eq p2, p3, :cond_3

    const/4 p3, -0x2

    if-eq p2, p3, :cond_2

    const/4 p3, -0x1

    const p4, 0x7f141240

    if-eq p2, p3, :cond_1

    invoke-virtual {p1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const p2, 0x7f140d4d

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const p2, 0x7f142e41

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    const p2, 0x7f141268

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance p3, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)V

    const-string p4, "Settings.ERROR_MOVE_DEVICE_ADMIN"

    invoke-virtual {p2, p4, p3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setCurrentProgress(I)V

    :goto_1
    return-void
.end method
