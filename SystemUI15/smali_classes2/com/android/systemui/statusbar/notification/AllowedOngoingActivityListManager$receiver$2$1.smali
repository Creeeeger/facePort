.class public final Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager$receiver$2$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager$receiver$2$1;->this$0:Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "com.samsung.intent.action.ONGOING_ACTIVITY_LIST_CHANGED"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager$receiver$2$1;->this$0:Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager;->notificationManager:Landroid/app/INotificationManager;

    invoke-interface {p1}, Landroid/app/INotificationManager;->getAllowedOngoingActivityAppList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager;->allowedList:Ljava/util/List;

    :cond_1
    return-void
.end method
