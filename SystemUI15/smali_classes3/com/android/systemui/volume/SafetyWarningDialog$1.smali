.class public final Lcom/android/systemui/volume/SafetyWarningDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/SafetyWarningDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/SafetyWarningDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SafetyWarningDialog$1;->this$0:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/volume/SafetyWarningDialog;->TAG:Ljava/lang/String;

    const-string p2, "Received ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/SafetyWarningDialog$1;->this$0:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/volume/SafetyWarningDialog$1;->this$0:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {p0}, Lcom/android/systemui/volume/SafetyWarningDialog;->cleanUp$1()V

    :cond_1
    return-void
.end method
