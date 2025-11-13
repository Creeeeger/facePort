.class public final Lcom/android/settings/notification/history/NotificationHistoryPackage;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public notifications:Ljava/util/TreeSet;

.field public pkgName:Ljava/lang/String;

.field public uid:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    iget v2, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    iget v3, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    iget-object v3, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->label:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->label:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->label:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    filled-new-array {p0, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
