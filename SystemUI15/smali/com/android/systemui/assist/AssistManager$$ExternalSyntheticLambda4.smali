.class public final synthetic Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/assist/AssistManager;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/assist/AssistManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistanceAppSettingAlertDialog:Landroid/app/AlertDialog;

    iget-boolean p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistPopupPositiveClicked:Z

    if-nez p1, :cond_0

    const-string p1, "980"

    const-string v0, "9802"

    invoke-static {p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mBroadcastReceiver:Lcom/android/systemui/assist/AssistManager$8;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
