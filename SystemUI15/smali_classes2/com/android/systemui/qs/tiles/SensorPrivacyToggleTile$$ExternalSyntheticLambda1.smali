.class public final synthetic Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->setSensorBlocked(IIZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p2, 0x7f13112e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->getSensorId()I

    move-result p2

    if-ne p2, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p2, 0x7f131132

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->sendAnnouncementEvent(Ljava/lang/String;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
