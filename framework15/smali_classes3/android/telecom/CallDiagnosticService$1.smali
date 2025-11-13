.class Landroid/telecom/CallDiagnosticService$1;
.super Ljava/lang/Object;
.source "CallDiagnosticService.java"

# interfaces
.implements Landroid/telecom/CallDiagnostics$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallDiagnosticService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/CallDiagnosticService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telecom/CallDiagnosticService$1;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$1;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleClearDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;I)V

    return-void
.end method

.method public blacklist onDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$1;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist onSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$1;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;II)V

    return-void
.end method
