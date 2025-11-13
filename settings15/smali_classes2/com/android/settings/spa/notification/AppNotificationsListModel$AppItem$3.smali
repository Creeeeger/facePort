.class final synthetic Lcom/android/settings/spa/notification/AppNotificationsListModel$AppItem$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/spa/notification/AppNotificationController;

    iget-object v1, p0, Lcom/android/settings/spa/notification/AppNotificationController;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/spa/notification/AppNotificationController;->repository:Lcom/android/settings/spa/notification/AppNotificationRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "app"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/settings/spa/notification/AppNotificationRepository;->notificationManager:Landroid/app/INotificationManager;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v3, v4, v5}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, v2, Lcom/android/settings/spa/notification/AppNotificationRepository;->notificationManager:Landroid/app/INotificationManager;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v7, "miscellaneous"

    invoke-interface/range {v4 .. v9}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    const/16 v4, -0x3e8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v4, v2, Lcom/android/settings/spa/notification/AppNotificationRepository;->notificationManager:Landroid/app/INotificationManager;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v4, v5, v6, v3}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_1
    :try_start_0
    iget-object v2, v2, Lcom/android/settings/spa/notification/AppNotificationRepository;->notificationManager:Landroid/app/INotificationManager;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v1, v0}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationController;->_isEnabled:Lcom/android/settings/spa/notification/AppNotificationController$_isEnabled$1;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "AppNotificationsRepo"

    const-string v0, "Error calling INotificationManager"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
