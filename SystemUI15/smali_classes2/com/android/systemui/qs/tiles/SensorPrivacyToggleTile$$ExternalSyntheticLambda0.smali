.class public final synthetic Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;Z)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$SensorPrivacyToggleDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p0

    const/4 v2, 0x1

    xor-int/2addr p0, v2

    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->setSensorBlocked(IIZ)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->toggleTileState()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
