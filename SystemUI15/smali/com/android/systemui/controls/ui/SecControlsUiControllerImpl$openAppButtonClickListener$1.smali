.class public final Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    sget-object v0, Lcom/android/systemui/controls/util/SALogger$Event$LaunchSmartThings;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Event$LaunchSmartThings;

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {p1}, Lcom/android/systemui/controls/util/ControlsUtil;->isSecureLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;)V

    sget-object p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1$2;->INSTANCE:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1$2;

    const/4 v1, 0x1

    invoke-interface {p1, v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1;->this$0:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->launchingPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V

    :cond_1
    :goto_0
    return-void
.end method
