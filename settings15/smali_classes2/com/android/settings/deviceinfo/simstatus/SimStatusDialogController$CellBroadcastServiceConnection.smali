.class public final Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mService:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    const-string p0, "SimStatusDialogCtrl"

    const-string p1, "Binding died"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    const-string p0, "SimStatusDialogCtrl"

    const-string p1, "Null binding"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SimStatusDialogCtrl"

    const-string v0, "connected to CellBroadcastService"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateAreaInfoText()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    const-string p0, "SimStatusDialogCtrl"

    const-string p1, "mICellBroadcastService has disconnected unexpectedly"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
