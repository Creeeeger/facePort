.class public final Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public final displayMetrics:Landroid/util/DisplayMetrics;

.field public final lockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->lockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->displayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final logAnimationCancelled(Z)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "LockscreenShadeTransitionController"

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logAnimationCancelled$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logAnimationCancelled$2;

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logAnimationCancelled$4;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logAnimationCancelled$4;

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_0
    return-void
.end method

.method public final logBlockSwipeUpLockscreenPanel()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logBlockSwipeUpLockscreenPanel$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logBlockSwipeUpLockscreenPanel$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logDefaultGoToFullShadeAnimation(J)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDefaultGoToFullShadeAnimation$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDefaultGoToFullShadeAnimation$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide p1, v1, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logDragDownAborted()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDragDownAborted$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDragDownAborted$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logDragDownAmountReset()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDragDownAmountReset$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDragDownAmountReset$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logDragDownAmountResetWhenFullyCollapsed()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDragDownAmountResetWhenFullyCollapsed$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDragDownAmountResetWhenFullyCollapsed$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logDragDownAnimation(F)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDragDownAnimation$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDragDownAnimation$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    float-to-double v1, p1

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide v1, p1, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logDragDownStarted(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDragDownStarted$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDragDownStarted$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "no entry"

    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logDraggedDown(Landroid/view/View;I)V
    .locals 5

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDraggedDown$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDraggedDown$2;

    const-string v3, "LockscreenShadeTransitionController"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v4, v3, v0, v2, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "no entry"

    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    int-to-float p1, p2

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->lockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 p2, 0xbb

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    sget-object p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_PULL_SHADE_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    new-instance p1, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {p1}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final logDraggedDownLockDownShade(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDraggedDownLockDownShade$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logDraggedDownLockDownShade$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "no entry"

    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logGoingToLockedShade(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logGoingToLockedShade$2;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logGoingToLockedShade$2;-><init>(Z)V

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logGoingToLockedShadeAborted()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logGoingToLockedShadeAborted$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logGoingToLockedShadeAborted$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logPulseExpansionFinished(Z)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "LockscreenShadeTransitionController"

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logPulseExpansionFinished$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logPulseExpansionFinished$2;

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logPulseExpansionFinished$4;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logPulseExpansionFinished$4;

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_0
    return-void
.end method

.method public final logPulseExpansionStarted()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logPulseExpansionStarted$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logPulseExpansionStarted$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logPulseHeightNotResetWhenFullyCollapsed()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logPulseHeightNotResetWhenFullyCollapsed$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logPulseHeightNotResetWhenFullyCollapsed$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logShadeDisabledOnGoToLockedShade()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logShadeDisabledOnGoToLockedShade$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logShadeDisabledOnGoToLockedShade$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTryGoToLockedShade(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logTryGoToLockedShade$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logTryGoToLockedShade$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUnSuccessfulDragDown(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logUnSuccessfulDragDown$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logUnSuccessfulDragDown$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "LockscreenShadeTransitionController"

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "no entry"

    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
