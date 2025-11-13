.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mRemoteInputCancelListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/PendingIntent$CancelListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mRemoteInputCancelListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanceled(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mRemoteInputCancelListener$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    const/16 v0, 0x12c

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    :cond_0
    return-void
.end method
