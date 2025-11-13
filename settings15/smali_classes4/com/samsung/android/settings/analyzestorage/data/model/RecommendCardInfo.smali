.class public final Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final confirmButton:Ljava/lang/String;

.field public final descriptionCard:Ljava/lang/String;

.field public final recommendCardType:I

.field public final subList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->recommendCardType:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->descriptionCard:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->subList:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->confirmButton:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;

    iget v1, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->recommendCardType:I

    iget v3, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->recommendCardType:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->descriptionCard:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->descriptionCard:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->subList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->subList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->confirmButton:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->confirmButton:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->recommendCardType:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->descriptionCard:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->subList:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->confirmButton:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->subList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RecommendCardInfo(recommendCardType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->recommendCardType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", descriptionCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->descriptionCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", subList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", confirmButton="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardInfo;->confirmButton:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
