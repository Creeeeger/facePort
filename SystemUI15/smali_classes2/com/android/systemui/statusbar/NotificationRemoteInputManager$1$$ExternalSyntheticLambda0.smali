.class public final synthetic Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

.field public final synthetic f$1:Landroid/widget/RemoteViews$RemoteResponse;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic f$4:Landroid/app/PendingIntent;

.field public final synthetic f$5:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$RemoteResponse;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$4:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final handleClick()Z
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/widget/RemoteViews$RemoteResponse;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$4:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/statusbar/ActionClickLogger$logStartingIntentWithDefaultHandler$2;->INSTANCE:Lcom/android/systemui/statusbar/ActionClickLogger$logStartingIntentWithDefaultHandler$2;

    iget-object v4, v4, Lcom/android/systemui/statusbar/ActionClickLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v7, "ActionClickLogger"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v6, :cond_0

    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    :cond_0
    move-object v7, v5

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v8, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/high16 p0, -0x80000000

    :goto_0
    iput p0, v7, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-static {v1, v2, v0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object v0, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    if-nez v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->releaseNotificationIfKeptForRemoteInputHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_3
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mActionPressListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {v1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_2
    return p0
.end method
