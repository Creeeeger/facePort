.class public final Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $action:Landroid/app/Notification$Action;

.field public final synthetic $actionIndex:I

.field public final synthetic $generatedByAssistant:Z

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $visibility:Lcom/android/internal/statusbar/NotificationVisibility;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationClickNotifier;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->this$0:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->$key:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->$actionIndex:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->$action:Landroid/app/Notification$Action;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->$visibility:Lcom/android/internal/statusbar/NotificationVisibility;

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->$generatedByAssistant:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->this$0:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->barService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->$key:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->$actionIndex:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->$action:Landroid/app/Notification$Action;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->$visibility:Lcom/android/internal/statusbar/NotificationVisibility;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->$generatedByAssistant:Z

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->this$0:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;->$key:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/NotificationClickNotifier;->access$notifyListenersAboutInteraction(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
