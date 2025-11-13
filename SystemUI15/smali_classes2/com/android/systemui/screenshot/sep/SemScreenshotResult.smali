.class public final Lcom/android/systemui/screenshot/sep/SemScreenshotResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final failedReason:I

.field public final secureWindowName:Ljava/lang/String;

.field public final targetWindowName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->failedReason:I

    iput-object p3, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->targetWindowName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->secureWindowName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->failedReason:I

    iget v3, p1, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->failedReason:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->targetWindowName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->targetWindowName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->secureWindowName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->secureWindowName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget v3, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->failedReason:I

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->targetWindowName:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->secureWindowName:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->bitmap:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SemScreenshotResult(bitmap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", failedReason="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->failedReason:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", targetWindowName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->targetWindowName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", secureWindowName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->secureWindowName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
