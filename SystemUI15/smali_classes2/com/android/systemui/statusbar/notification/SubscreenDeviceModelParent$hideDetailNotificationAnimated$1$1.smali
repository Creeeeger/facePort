.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$hideDetailNotificationAnimated$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$hideDetailNotificationAnimated$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$hideDetailNotificationAnimated$1$1;->$it:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$hideDetailNotificationAnimated$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->hideDetailNotif()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$hideDetailNotificationAnimated$1$1;->$it:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->hideDetailNotification()V

    return-void
.end method
