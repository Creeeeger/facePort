.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;
.super Landroid/util/FloatProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "delayedDozeAmount"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static setValue(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;F)V
    .locals 5

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountOverride:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-nez v1, :cond_1

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDelayDozeAmountOverrideLogWasFractional:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->allowThrottle:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDelayDozeAmountOverrideLogWasFractional:Z

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetDelayDozeAmountOverride$2;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "NotificationWakeUpCoordinator"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    float-to-double v2, p1

    move-object p1, v1

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide v2, p1, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateDozeAmount()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget p0, p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountOverride:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;->setValue(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;F)V

    return-void
.end method
