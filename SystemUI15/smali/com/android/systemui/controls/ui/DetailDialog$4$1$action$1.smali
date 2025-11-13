.class public final Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/DetailDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/DetailDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog$4$1$action$1;->this$0:Lcom/android/systemui/controls/ui/DetailDialog;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {v0}, Lcom/android/systemui/broadcast/BroadcastSender;->closeSystemDialogs()V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DetailDialog;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    return p0
.end method
