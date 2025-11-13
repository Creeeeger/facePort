.class public final Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationClickNotifier;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$2;->this$0:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$2;->$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$2;->this$0:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$2;->$key:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/NotificationClickNotifier;->access$notifyListenersAboutInteraction(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;)V

    return-void
.end method
