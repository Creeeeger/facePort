.class Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageWizardMoveProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(IIJ)V
    .locals 0

    .line 79
    iget-object p3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-static {p3}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->-$$Nest$fgetmMoveId(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)I

    move-result p3

    if-eq p3, p1, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Finished with status "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "StorageWizardMoveProgress"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x64

    if-eq p2, p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->-$$Nest$mmoveStatusToMessage(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 88
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 92
    :cond_2
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 96
    :cond_3
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;

    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setCurrentProgress(I)V

    :goto_0
    return-void
.end method
