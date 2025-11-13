.class Lcom/samsung/android/emergencymode/SemEmergencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemEmergencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/emergencymode/SemEmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/emergencymode/SemEmergencyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyManager"

    invoke-static {v2, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->-$$Nest$fgetmContext(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->-$$Nest$fgetmContext(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    const/16 v4, 0x10

    iget-object v5, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    if-ne v5, v2, :cond_4

    :cond_3
    const/16 v4, 0x200

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v2, v1, v4, v3, p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->-$$Nest$mtriggerEmergencyMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;ZIZLandroid/content/Intent;)V

    goto :goto_2

    :cond_5
    :goto_1
    const-string v1, "enabled"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "flag"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "skipdialog"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v4, v5, :cond_a

    const/16 v5, 0x800

    if-ne v4, v5, :cond_6

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->-$$Nest$sfgetmSupport_BCM()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_6
    const/16 v5, 0x200

    if-eq v4, v5, :cond_7

    const/16 v5, 0x400

    if-ne v4, v5, :cond_9

    :cond_7
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->-$$Nest$sfgetmSupport_UPSM()Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive : trying to ON BCM|UPSM while BCM|UPMS not supported in this model. Flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v2, v1, v4, v3, p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->-$$Nest$mtriggerEmergencyMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;ZIZLandroid/content/Intent;)V

    :cond_a
    nop

    :goto_2
    return-void
.end method
