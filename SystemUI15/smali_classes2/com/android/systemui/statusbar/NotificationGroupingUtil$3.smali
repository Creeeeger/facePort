.class public final Lcom/android/systemui/statusbar/NotificationGroupingUtil$3;
.super Lcom/android/systemui/statusbar/NotificationGroupingUtil$IconComparator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$IconComparator;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p3, Landroid/app/Notification;

    invoke-virtual {p3}, Landroid/app/Notification;->shouldUseAppIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Landroid/app/Notification;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    :goto_0
    check-cast p4, Landroid/app/Notification;

    invoke-virtual {p4}, Landroid/app/Notification;->shouldUseAppIcon()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p4}, Landroid/app/Notification;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p3}, Landroid/app/Notification;->shouldUseAppIcon()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    move p0, p1

    goto :goto_2

    :cond_2
    iget p0, p3, Landroid/app/Notification;->color:I

    :goto_2
    invoke-virtual {p4}, Landroid/app/Notification;->shouldUseAppIcon()Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, p1

    goto :goto_3

    :cond_3
    iget p2, p4, Landroid/app/Notification;->color:I

    :goto_3
    if-ne p0, p2, :cond_5

    :cond_4
    const/4 p1, 0x1

    :cond_5
    return p1
.end method
