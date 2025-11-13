.class Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/SamsungScreenPinningRequest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;->this$0:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;->this$0:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    invoke-static {p1}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->-$$Nest$fgetmDialog(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;->this$0:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    invoke-static {p1}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->-$$Nest$fgetmDialog(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;->this$0:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->clearPrompt()V

    :cond_0
    return-void
.end method
