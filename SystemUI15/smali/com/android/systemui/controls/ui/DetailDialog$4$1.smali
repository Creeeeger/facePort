.class public final Lcom/android/systemui/controls/ui/DetailDialog$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/DetailDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/DetailDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/DetailDialog;->dismiss()V

    new-instance p1, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-direct {p1, v0}, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;-><init>(Lcom/android/systemui/controls/ui/DetailDialog;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/DetailDialog;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->onDismiss()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/DetailDialog;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    sget-object p1, Lcom/android/systemui/controls/util/SALogger$Event$LaunchFullController;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Event$LaunchFullController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    return-void
.end method
