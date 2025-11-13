.class public abstract Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewDataKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final toIconInfo(Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;Landroid/graphics/drawable/Icon;)Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconInfo;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->groupKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->key:Ljava/lang/String;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconInfo;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
