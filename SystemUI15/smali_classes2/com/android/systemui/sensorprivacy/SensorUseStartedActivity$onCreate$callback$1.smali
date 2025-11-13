.class public final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSensorBlockedChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 p2, 0x1

    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->isCameraBlocked(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
