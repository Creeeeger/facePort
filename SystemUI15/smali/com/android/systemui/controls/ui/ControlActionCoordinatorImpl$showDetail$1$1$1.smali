.class public final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public final synthetic $pendingIntent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/app/PendingIntent;Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    move-object v3, p1

    check-cast v3, Lcom/android/wm/shell/taskview/TaskView;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    new-instance v9, Lcom/android/systemui/controls/ui/DetailDialog;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->$pendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v7, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v8, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/controls/ui/DetailDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/wm/shell/taskview/TaskView;Landroid/app/PendingIntent;Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/util/SALogger;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    const-string v0, "DetailDialog"

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;)V

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    iput-object v9, p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    return-void
.end method
