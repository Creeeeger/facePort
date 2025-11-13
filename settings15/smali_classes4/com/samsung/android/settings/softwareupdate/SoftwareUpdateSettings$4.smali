.class public final Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "SoftwareUpdateSettings"

    const-string p2, "Software Update date is updated"

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    sget-boolean p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSupportDualLockDSH:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateLastCheckedDate()V

    return-void
.end method
