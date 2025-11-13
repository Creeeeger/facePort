.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final notification:Landroid/app/Notification;

.field public final notificationKey:Ljava/lang/String;

.field public final objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

.field public final packageName:Ljava/lang/String;

.field public final uid:I

.field public final viewUsage:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/app/Notification;",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->uid:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notificationKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notification:Landroid/app/Notification;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->packageName:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->uid:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->uid:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notificationKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notificationKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notification:Landroid/app/Notification;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notification:Landroid/app/Notification;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->uid:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notificationKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notification:Landroid/app/Notification;

    invoke-virtual {v2}, Landroid/app/Notification;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NotificationMemoryUsage(packageName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", notificationKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notificationKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", notification="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", objectUsage="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", viewUsage="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
