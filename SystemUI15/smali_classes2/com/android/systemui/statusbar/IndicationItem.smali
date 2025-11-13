.class public final Lcom/android/systemui/statusbar/IndicationItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mDurationTime:J

.field public final mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

.field public final mIsAnimation:Z

.field public final mItemId:I

.field public final mPriority:I

.field public final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationEventType;->getPriority()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/IndicationItem;->mIsAnimation:Z

    iput-wide p5, p0, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/IndicationItem;

    iget v0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    iget v1, p1, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    iget p0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    sub-int p1, v1, v0

    :goto_0
    return p1
.end method

.method public final isPersistantEvent()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|pr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|txt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|ti=duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IndicationItem;->isPersistantEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PERSISTENT"

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|an="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mIsAnimation:Z

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
