.class public final Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public allowedList:Ljava/util/List;

.field public final notificationManager:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/INotificationManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager;->notificationManager:Landroid/app/INotificationManager;

    new-instance v0, Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager$receiver$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager$receiver$2;-><init>(Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.ONGOING_ACTIVITY_LIST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager$receiver$2$1;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-interface {p2}, Landroid/app/INotificationManager;->getAllowedOngoingActivityAppList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AllowedOngoingActivityListManager;->allowedList:Ljava/util/List;

    return-void
.end method
