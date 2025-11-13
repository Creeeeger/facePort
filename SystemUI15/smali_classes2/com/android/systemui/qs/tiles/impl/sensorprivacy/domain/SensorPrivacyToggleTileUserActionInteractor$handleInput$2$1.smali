.class public final Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor$handleInput$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $blocked:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor$handleInput$2$1;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor$handleInput$2$1;->$blocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor$handleInput$2$1;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    iget v0, v0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->sensorId:I

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor$handleInput$2$1;->$blocked:Z

    const/4 v2, 0x1

    xor-int/2addr p0, v2

    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->setSensorBlocked(IIZ)V

    return-void
.end method
