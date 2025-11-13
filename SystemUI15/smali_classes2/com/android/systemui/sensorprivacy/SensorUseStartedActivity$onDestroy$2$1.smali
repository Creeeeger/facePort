.class public final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$2$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$2$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    sget v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->disableSensorPrivacy()V

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$2$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/16 v0, 0x17e

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    return-void
.end method
