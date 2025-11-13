.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsCovered:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationShowing:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsCovered:Z

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsCovered:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->clearMainList()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->clearMainList()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->buildList()V

    :cond_5
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsCovered:Z

    const-string p1, " onUpdateCoverState - coverType = "

    const-string v1, " isCovered = "

    const-string v2, "S.S.N."

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    :cond_6
    return-void
.end method
