.class public final Lcom/android/wm/shell/compatui/api/CompatUILayout;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final layoutParamFlags:I

.field public final positionFactory:Lkotlin/jvm/functions/Function4;

.field public final viewBinder:Lkotlin/jvm/functions/Function4;

.field public final viewBuilder:Lkotlin/jvm/functions/Function3;

.field public final viewReleaser:Lkotlin/jvm/functions/Function0;

.field public final zOrder:I


# direct methods
.method public constructor <init>(IILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/jvm/functions/Function4;",
            "Lkotlin/jvm/functions/Function4;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->zOrder:I

    iput p2, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->layoutParamFlags:I

    iput-object p3, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewBuilder:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewBinder:Lkotlin/jvm/functions/Function4;

    iput-object p5, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->positionFactory:Lkotlin/jvm/functions/Function4;

    iput-object p6, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewReleaser:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/16 p2, 0x28

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_2

    sget-object p4, Lcom/android/wm/shell/compatui/api/CompatUILayout$1;->INSTANCE:Lcom/android/wm/shell/compatui/api/CompatUILayout$1;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_3

    sget-object p6, Lcom/android/wm/shell/compatui/api/CompatUILayout$2;->INSTANCE:Lcom/android/wm/shell/compatui/api/CompatUILayout$2;

    :cond_3
    move-object v6, p6

    move-object v0, p0

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/compatui/api/CompatUILayout;-><init>(IILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/compatui/api/CompatUILayout;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/compatui/api/CompatUILayout;

    iget v1, p1, Lcom/android/wm/shell/compatui/api/CompatUILayout;->zOrder:I

    iget v3, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->zOrder:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->layoutParamFlags:I

    iget v3, p1, Lcom/android/wm/shell/compatui/api/CompatUILayout;->layoutParamFlags:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewBuilder:Lkotlin/jvm/functions/Function3;

    iget-object v3, p1, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewBuilder:Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewBinder:Lkotlin/jvm/functions/Function4;

    iget-object v3, p1, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewBinder:Lkotlin/jvm/functions/Function4;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->positionFactory:Lkotlin/jvm/functions/Function4;

    iget-object v3, p1, Lcom/android/wm/shell/compatui/api/CompatUILayout;->positionFactory:Lkotlin/jvm/functions/Function4;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewReleaser:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewReleaser:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->zOrder:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->layoutParamFlags:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewBuilder:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewBinder:Lkotlin/jvm/functions/Function4;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->positionFactory:Lkotlin/jvm/functions/Function4;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewReleaser:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompatUILayout(zOrder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->zOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layoutParamFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->layoutParamFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", viewBuilder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewBuilder:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewBinder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewBinder:Lkotlin/jvm/functions/Function4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", positionFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->positionFactory:Lkotlin/jvm/functions/Function4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewReleaser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/api/CompatUILayout;->viewReleaser:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
