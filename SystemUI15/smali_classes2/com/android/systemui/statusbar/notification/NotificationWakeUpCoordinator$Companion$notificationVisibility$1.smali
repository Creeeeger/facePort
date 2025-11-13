.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$notificationVisibility$1;
.super Landroid/util/FloatProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "notificationVisibility"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget p0, p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    sget-object p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$notificationVisibility$1;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setVisibilityAmount(F)V

    return-void
.end method
