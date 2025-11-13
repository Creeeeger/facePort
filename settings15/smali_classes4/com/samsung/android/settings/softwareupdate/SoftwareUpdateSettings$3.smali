.class public final Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SoftwareUpdateSettings"

    const-string/jumbo v0, "onServiceConnected()"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->getOemSimLock()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SoftwareUpdateSettings"

    const-string/jumbo v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method
