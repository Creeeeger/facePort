.class public final synthetic Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qp/ViewPagerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/ViewPagerAdapter;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/ViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/ViewPagerAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBrightnessBlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "ViewPagerAdapter"

    const-string p1, "Subscreen Brightness tile not available by KnoxStateMonitor."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->subRoomButtonListener:Lcom/android/systemui/qp/ViewPagerAdapter$SubRoomButtonListener;

    check-cast p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->setSubscreenSettings(I)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mBackButton:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPBE2006"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isFlashlightTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "ViewPagerAdapter"

    const-string p1, "Subscreen Flashlight tile not available by KnoxStateMonitor."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->subRoomButtonListener:Lcom/android/systemui/qp/ViewPagerAdapter$SubRoomButtonListener;

    check-cast p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "SubroomQuickSettingsBaseView"

    const-string v0, "isFlashLightButtonClicked: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->startFlashActivity()V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
