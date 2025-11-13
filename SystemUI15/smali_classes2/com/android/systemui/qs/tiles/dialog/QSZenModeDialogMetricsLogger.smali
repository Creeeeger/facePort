.class public final Lcom/android/systemui/qs/tiles/dialog/QSZenModeDialogMetricsLogger;
.super Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/QSZenModeDialogMetricsLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final logOnClickTimeButton(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->logOnClickTimeButton(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/QSZenModeDialogMetricsLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_TIME_UP:Lcom/android/systemui/qs/QSDndEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_TIME_DOWN:Lcom/android/systemui/qs/QSDndEvent;

    :goto_0
    check-cast p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final logOnConditionSelected()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->logOnConditionSelected()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/QSZenModeDialogMetricsLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_CONDITION_SELECT:Lcom/android/systemui/qs/QSDndEvent;

    check-cast p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final logOnEnableZenModeForever()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->logOnEnableZenModeForever()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/QSZenModeDialogMetricsLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_DIALOG_ENABLE_FOREVER:Lcom/android/systemui/qs/QSDndEvent;

    check-cast p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final logOnEnableZenModeUntilAlarm()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->logOnEnableZenModeUntilAlarm()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/QSZenModeDialogMetricsLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_DIALOG_ENABLE_UNTIL_ALARM:Lcom/android/systemui/qs/QSDndEvent;

    check-cast p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final logOnEnableZenModeUntilCountdown()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->logOnEnableZenModeUntilCountdown()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/QSZenModeDialogMetricsLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_DIALOG_ENABLE_UNTIL_COUNTDOWN:Lcom/android/systemui/qs/QSDndEvent;

    check-cast p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
