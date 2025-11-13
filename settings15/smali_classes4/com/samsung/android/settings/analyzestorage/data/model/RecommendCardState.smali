.class public final Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final removedCardPosition:I

.field public final supportedCardList:Ljava/util/ArrayList;

.field public final type:I

.field public final updatedCardPosition:I


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;III)V
    .locals 2

    and-int/lit8 v0, p5, 0x4

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v1

    :cond_1
    const-string/jumbo p5, "supportedCardList"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->type:I

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->supportedCardList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->removedCardPosition:I

    iput p4, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->updatedCardPosition:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;

    iget v1, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->type:I

    iget v3, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->type:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->supportedCardList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->supportedCardList:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->removedCardPosition:I

    iget v3, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->removedCardPosition:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->updatedCardPosition:I

    iget p1, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->updatedCardPosition:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->supportedCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->removedCardPosition:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->updatedCardPosition:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->supportedCardList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RecommendCardState(type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", supportedCardList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", removedCardPosition="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->removedCardPosition:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", updatedCardPosition="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->updatedCardPosition:I

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
