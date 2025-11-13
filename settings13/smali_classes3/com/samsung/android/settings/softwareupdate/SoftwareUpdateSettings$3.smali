.class Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;
.super Ljava/lang/Object;
.source "SoftwareUpdateSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;
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

    .line 225
    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SoftwareUpdateSettings"

    const-string v0, "onServiceConnected()"

    .line 227
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;Landroid/os/Messenger;)V

    .line 229
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->-$$Nest$mgetOemSimLock(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SoftwareUpdateSettings"

    const-string v0, "onServiceDisconnected()"

    .line 233
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;Landroid/os/Messenger;)V

    return-void
.end method
