.class public final synthetic Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozing:Z

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v2, v4, v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    if-eqz v0, :cond_2

    const-string v0, "QPNE0007"

    invoke-static {v0, v1}, Lcom/android/systemui/util/NotificationSAUtil;->sendCancelLog(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
