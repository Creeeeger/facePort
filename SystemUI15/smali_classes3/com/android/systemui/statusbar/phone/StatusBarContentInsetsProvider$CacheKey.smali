.class public final Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final displayCutout:Landroid/view/DisplayCutout;

.field public final displaySize:Landroid/graphics/Rect;

.field public final rotation:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;Landroid/view/DisplayCutout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->rotation:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->displaySize:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->displayCutout:Landroid/view/DisplayCutout;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->rotation:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->rotation:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->displaySize:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->displaySize:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->displayCutout:Landroid/view/DisplayCutout;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->rotation:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->displaySize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->displayCutout:Landroid/view/DisplayCutout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->displaySize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->displayCutout:Landroid/view/DisplayCutout;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CacheKey(rotation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;->rotation:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", displaySize="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", displayCutout="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
