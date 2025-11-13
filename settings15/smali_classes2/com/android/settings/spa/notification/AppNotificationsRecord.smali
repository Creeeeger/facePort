.class public final Lcom/android/settings/spa/notification/AppNotificationsRecord;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppRecord;


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final controller:Lcom/android/settings/spa/notification/AppNotificationController;

.field public final sentState:Lcom/android/settings/spa/notification/NotificationSentState;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/notification/NotificationSentState;Lcom/android/settings/spa/notification/AppNotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->app:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->sentState:Lcom/android/settings/spa/notification/NotificationSentState;

    iput-object p3, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->controller:Lcom/android/settings/spa/notification/AppNotificationController;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/spa/notification/AppNotificationsRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/spa/notification/AppNotificationsRecord;

    iget-object v1, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/settings/spa/notification/AppNotificationsRecord;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->sentState:Lcom/android/settings/spa/notification/NotificationSentState;

    iget-object v3, p1, Lcom/android/settings/spa/notification/AppNotificationsRecord;->sentState:Lcom/android/settings/spa/notification/NotificationSentState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->controller:Lcom/android/settings/spa/notification/AppNotificationController;

    iget-object p1, p1, Lcom/android/settings/spa/notification/AppNotificationsRecord;->controller:Lcom/android/settings/spa/notification/AppNotificationController;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getApp()Landroid/content/pm/ApplicationInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->app:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->app:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->sentState:Lcom/android/settings/spa/notification/NotificationSentState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/spa/notification/NotificationSentState;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->controller:Lcom/android/settings/spa/notification/AppNotificationController;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->app:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppNotificationsRecord(app="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sentState="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->sentState:Lcom/android/settings/spa/notification/NotificationSentState;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", controller="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->controller:Lcom/android/settings/spa/notification/AppNotificationController;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
