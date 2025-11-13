.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic $action:Landroid/app/Notification$Action;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Landroid/app/Notification$Action;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1$1;->$action:Landroid/app/Notification$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1$1;->$action:Landroid/app/Notification$Action;

    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    invoke-static {p0, v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->access$sendPendingIntent(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Landroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method
