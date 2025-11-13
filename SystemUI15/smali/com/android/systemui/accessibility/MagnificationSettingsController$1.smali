.class public final Lcom/android/systemui/accessibility/MagnificationSettingsController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/MagnificationSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMagnifierScale(FZ)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    iget p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    sget-object v1, Lcom/android/systemui/accessibility/MagnificationSettingsController;->A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lcom/android/systemui/accessibility/Magnification$4;

    iget-object v1, v0, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v1, v1, Lcom/android/systemui/accessibility/Magnification;->mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IMagnificationConnectionCallback;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/view/accessibility/IMagnificationConnectionCallback;->onPerformScaleAction(IFZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowMagnificationConnectionImpl"

    const-string p2, "Failed to inform performing scale action"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p0, v0, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification;->mA11yLogger:Lcom/android/systemui/accessibility/AccessibilityLogger;

    sget-object p1, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_ZOOM_SLIDER_CHANGED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    iget-object p2, p0, Lcom/android/systemui/accessibility/AccessibilityLogger;->clock:Lcom/android/systemui/util/time/SystemClock;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/AccessibilityLogger;->clock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/accessibility/AccessibilityLogger;->lastEventThrottled:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/systemui/accessibility/AccessibilityLogger;->lastTimeThrottledMs:J

    sub-long v2, v0, v2

    const/16 v4, 0x7d0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/accessibility/AccessibilityLogger;->lastEventThrottled:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    iput-wide v0, p0, Lcom/android/systemui/accessibility/AccessibilityLogger;->lastTimeThrottledMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit p2

    goto :goto_2

    :cond_2
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    iget-object p0, p0, Lcom/android/systemui/accessibility/AccessibilityLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_2
    return-void

    :goto_3
    monitor-exit p2

    throw p0
.end method
