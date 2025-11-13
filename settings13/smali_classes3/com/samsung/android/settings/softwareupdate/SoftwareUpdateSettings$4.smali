.class Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "SoftwareUpdateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->createBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "SoftwareUpdateSettings"

    const-string p2, "Software Update date is updated"

    .line 242
    invoke-static {p1, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->-$$Nest$mupdateLastCheckedDate(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V

    return-void
.end method
