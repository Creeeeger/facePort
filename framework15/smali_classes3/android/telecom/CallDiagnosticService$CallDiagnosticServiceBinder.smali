.class final Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;
.super Lcom/android/internal/telecom/ICallDiagnosticService$Stub;
.source "CallDiagnosticService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallDiagnosticServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallDiagnosticService;


# direct methods
.method public static synthetic blacklist $r8$lambda$0efFyxs64PWs5U340Yu28FDt02o(Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;Landroid/telecom/CallAudioState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->lambda$updateCallAudioState$0(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/CallDiagnosticService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;-><init>(Landroid/telecom/CallDiagnosticService;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateCallAudioState$0(Landroid/telecom/CallAudioState;)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-virtual {v0, p1}, Landroid/telecom/CallDiagnosticService;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleCallQualityChanged(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telephony/CallQuality;)V

    return-void
.end method

.method public blacklist initializeDiagnosticCall(Landroid/telecom/ParcelableCall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleCallAdded(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method public blacklist notifyCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleCallDisconnected(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    return-void
.end method

.method public blacklist receiveBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleBluetoothCallQualityReport(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method public blacklist receiveDeviceToDeviceMessage(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleReceivedD2DMessage(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist removeDiagnosticCall(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleCallRemoved(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleSetAdapter(Landroid/telecom/CallDiagnosticService;Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V

    return-void
.end method

.method public blacklist updateCall(Landroid/telecom/ParcelableCall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleCallUpdated(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method public blacklist updateCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-virtual {v0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;Landroid/telecom/CallAudioState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
