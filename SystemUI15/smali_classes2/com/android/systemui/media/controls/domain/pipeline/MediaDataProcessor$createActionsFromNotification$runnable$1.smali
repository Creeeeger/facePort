.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $action:Landroid/app/Notification$Action;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;


# direct methods
.method public constructor <init>(Landroid/app/Notification$Action;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    iget-object p0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    invoke-virtual {v0}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1$1;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Landroid/app/Notification$Action;)V

    sget-object p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1$2;

    const/4 v0, 0x1

    invoke-interface {v1, v2, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    iget-object p0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->access$sendPendingIntent(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Landroid/app/PendingIntent;)Z

    :goto_0
    return-void
.end method
