.class public final Lcom/android/systemui/media/MediaDataFormat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final data:Lcom/android/systemui/media/controls/shared/model/MediaData;

.field public final isImmediately:Z

.field public final isSsReactivated:Z

.field public final key:Ljava/lang/String;

.field public final oldKey:Ljava/lang/String;

.field public final receivedSmartspaceCardLatency:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataFormat;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataFormat;->oldKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDataFormat;->data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iput-boolean p4, p0, Lcom/android/systemui/media/MediaDataFormat;->isImmediately:Z

    iput p5, p0, Lcom/android/systemui/media/MediaDataFormat;->receivedSmartspaceCardLatency:I

    iput-boolean p6, p0, Lcom/android/systemui/media/MediaDataFormat;->isSsReactivated:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/MediaDataFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/MediaDataFormat;

    iget-object v1, p1, Lcom/android/systemui/media/MediaDataFormat;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/MediaDataFormat;->key:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataFormat;->oldKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/MediaDataFormat;->oldKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataFormat;->data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v3, p1, Lcom/android/systemui/media/MediaDataFormat;->data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaDataFormat;->isImmediately:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/MediaDataFormat;->isImmediately:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/media/MediaDataFormat;->receivedSmartspaceCardLatency:I

    iget v3, p1, Lcom/android/systemui/media/MediaDataFormat;->receivedSmartspaceCardLatency:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaDataFormat;->isSsReactivated:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/MediaDataFormat;->isSsReactivated:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFormat;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaDataFormat;->oldKey:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaDataFormat;->data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {v2}, Lcom/android/systemui/media/controls/shared/model/MediaData;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaDataFormat;->isImmediately:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaDataFormat;->receivedSmartspaceCardLatency:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaDataFormat;->isSsReactivated:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaDataFormat(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaDataFormat;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oldKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDataFormat;->oldKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDataFormat;->data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isImmediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaDataFormat;->isImmediately:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", receivedSmartspaceCardLatency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/MediaDataFormat;->receivedSmartspaceCardLatency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSsReactivated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaDataFormat;->isSsReactivated:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
