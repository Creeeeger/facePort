.class public final Lcom/android/settings/spa/notification/AppNotificationController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _isEnabled:Lcom/android/settings/spa/notification/AppNotificationController$_isEnabled$1;

.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final repository:Lcom/android/settings/spa/notification/AppNotificationRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/notification/AppNotificationRepository;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/notification/AppNotificationController;->repository:Lcom/android/settings/spa/notification/AppNotificationRepository;

    iput-object p2, p0, Lcom/android/settings/spa/notification/AppNotificationController;->app:Landroid/content/pm/ApplicationInfo;

    new-instance p1, Lcom/android/settings/spa/notification/AppNotificationController$_isEnabled$1;

    invoke-direct {p1, p0}, Lcom/android/settings/spa/notification/AppNotificationController$_isEnabled$1;-><init>(Lcom/android/settings/spa/notification/AppNotificationController;)V

    iput-object p1, p0, Lcom/android/settings/spa/notification/AppNotificationController;->_isEnabled:Lcom/android/settings/spa/notification/AppNotificationController$_isEnabled$1;

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 3

    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationController;->_isEnabled:Lcom/android/settings/spa/notification/AppNotificationController$_isEnabled$1;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

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

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method
