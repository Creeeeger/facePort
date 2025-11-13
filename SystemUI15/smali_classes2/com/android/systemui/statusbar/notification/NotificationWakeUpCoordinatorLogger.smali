.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final allowThrottle:Z

.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public lastOnDozeAmountChangedLogWasFractional:Z

.field public lastSetDelayDozeAmountOverrideLogWasFractional:Z

.field public lastSetDozeAmountLogDelayWasFractional:Z

.field public lastSetDozeAmountLogInputWasFractional:Z

.field public lastSetDozeAmountLogState:I

.field public lastSetHardOverride:Ljava/lang/Float;

.field public lastSetHideAmount:F

.field public lastSetHideAmountLogWasFractional:Z

.field public lastSetVisibilityAmountLogWasFractional:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->allowThrottle:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogState:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHideAmount:F

    return-void
.end method
