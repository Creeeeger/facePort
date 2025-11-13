.class public final Lcom/android/settings/spa/notification/AppNotificationController$_isEnabled$1;
.super Landroidx/lifecycle/MutableLiveData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/spa/notification/AppNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/notification/AppNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/notification/AppNotificationController$_isEnabled$1;->this$0:Lcom/android/settings/spa/notification/AppNotificationController;

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActive()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/spa/notification/AppNotificationController$_isEnabled$1;->this$0:Lcom/android/settings/spa/notification/AppNotificationController;

    iget-object v1, v0, Lcom/android/settings/spa/notification/AppNotificationController;->repository:Lcom/android/settings/spa/notification/AppNotificationRepository;

    iget-object v0, v0, Lcom/android/settings/spa/notification/AppNotificationController;->app:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "app"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/settings/spa/notification/AppNotificationRepository;->notificationManager:Landroid/app/INotificationManager;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v0}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onInactive()V
    .locals 0

    return-void
.end method
