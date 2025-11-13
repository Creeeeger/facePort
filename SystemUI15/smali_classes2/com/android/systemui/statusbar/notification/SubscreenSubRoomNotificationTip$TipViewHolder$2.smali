.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "SubscreenSubRoomNotificationTip"

    const-string v0, "dismiss button click"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->onTipButtonClicked()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->notifyClockSubRoomRequest()V

    return-void
.end method
