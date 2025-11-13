.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bigPicture:I

.field public final extender:I

.field public final extras:I

.field public final hasCustomView:Z

.field public final largeIcon:I

.field public final smallIcon:I

.field public final style:I

.field public final styleIcon:I


# direct methods
.method public constructor <init>(IIIIIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->smallIcon:I

    iput p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->largeIcon:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extras:I

    iput p4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->style:I

    iput p5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->styleIcon:I

    iput p6, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->bigPicture:I

    iput p7, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extender:I

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->hasCustomView:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    iget v1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->smallIcon:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->smallIcon:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->largeIcon:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->largeIcon:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extras:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extras:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->style:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->style:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->styleIcon:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->styleIcon:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->bigPicture:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->bigPicture:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extender:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extender:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->hasCustomView:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->hasCustomView:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->smallIcon:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->largeIcon:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extras:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->style:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->styleIcon:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->bigPicture:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extender:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->hasCustomView:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationObjectUsage(smallIcon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->smallIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", largeIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->largeIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extras:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", styleIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->styleIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bigPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->bigPicture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extender:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasCustomView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->hasCustomView:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
