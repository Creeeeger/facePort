.class public final Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/EuiccOperationSidecar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->getReceiverAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    iget p1, p1, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mOpId:I

    const-string v0, "op_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v0

    iput v0, p1, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mResultCode:I

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mDetailedCode:I

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    iget p1, p1, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mResultCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    iget p2, p2, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mDetailedCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Result code : %d; detailed code : %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EuiccOperationSidecar"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->onActionReceived()V

    :cond_0
    return-void
.end method
