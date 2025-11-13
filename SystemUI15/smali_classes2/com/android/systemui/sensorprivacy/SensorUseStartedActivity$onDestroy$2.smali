.class public final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$2;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$2;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$2$1;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method
