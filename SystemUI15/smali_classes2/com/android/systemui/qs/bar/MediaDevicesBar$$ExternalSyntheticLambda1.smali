.class public final synthetic Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QUICK_PANEL_LAYOUT"

    const-string v1, "QPPE1005"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSecDeviceControlsController:Lcom/android/systemui/controls/controller/SecDeviceControlsController;

    check-cast p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->start(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QUICK_PANEL_LAYOUT"

    const-string v1, "QPPE1006"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startMediaActivity()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaOutputHelper;->showDetail()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
