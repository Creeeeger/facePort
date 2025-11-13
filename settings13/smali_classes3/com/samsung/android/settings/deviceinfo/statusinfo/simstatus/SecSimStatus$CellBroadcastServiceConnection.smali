.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;
.super Ljava/lang/Object;
.source "SecSimStatus.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellBroadcastServiceConnection"
.end annotation


# instance fields
.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    return-void
.end method


# virtual methods
.method public getService()Landroid/os/IBinder;
    .locals 0

    .line 898
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 916
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    const-string p0, "SecSimStatus"

    const-string p1, "Binding died"

    .line 917
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 922
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    const-string p0, "SecSimStatus"

    const-string p1, "Null binding"

    .line 923
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SecSimStatus"

    const-string v0, "connected to CellBroadcastService"

    .line 903
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    .line 905
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->-$$Nest$mupdateAreaInfoText(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 910
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    const-string p0, "SecSimStatus"

    const-string p1, "mICellBroadcastService has disconnected unexpectedly"

    .line 911
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
