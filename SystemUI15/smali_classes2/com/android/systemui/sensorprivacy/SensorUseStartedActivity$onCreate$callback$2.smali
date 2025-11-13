.class public final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$2;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSensorBlockedChanged(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$2;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    iget v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->isCameraBlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
