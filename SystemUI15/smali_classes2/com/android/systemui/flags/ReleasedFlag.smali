.class public final Lcom/android/systemui/flags/ReleasedFlag;
.super Lcom/android/systemui/flags/BooleanFlag;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final name:Ljava/lang/String;

.field public final namespace:Ljava/lang/String;

.field public final overridden:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/BooleanFlag;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    iput-object p1, p0, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/flags/ReleasedFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/flags/ReleasedFlag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v1, p0, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    iget-boolean p1, p1, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public final getOverridden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/flags/ReleasedFlag;->overridden:Z

    const-string v2, "ReleasedFlag(name="

    const-string v3, ", namespace="

    const-string v4, ", overridden="

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
