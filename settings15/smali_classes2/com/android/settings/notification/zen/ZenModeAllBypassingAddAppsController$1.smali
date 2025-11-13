.class public final Lcom/android/settings/notification/zen/ZenModeAllBypassingAddAppsController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    check-cast p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    or-int/2addr p0, v1

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    iget-object p1, p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :goto_2
    return v0
.end method
