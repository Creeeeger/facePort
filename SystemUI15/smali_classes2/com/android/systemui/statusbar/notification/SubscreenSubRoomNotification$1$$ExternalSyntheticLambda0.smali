.class public final synthetic Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
