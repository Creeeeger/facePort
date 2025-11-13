.class public final Lcom/android/systemui/assist/AssistManager$8;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$8;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "homekey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$8;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p1, p1, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$8;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p1, p1, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$8;->this$0:Lcom/android/systemui/assist/AssistManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
