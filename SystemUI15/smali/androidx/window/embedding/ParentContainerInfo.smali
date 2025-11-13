.class public final Landroidx/window/embedding/ParentContainerInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final configuration:Landroid/content/res/Configuration;

.field public final density:F

.field public final windowBounds:Landroidx/window/core/Bounds;

.field public final windowInsets:Landroidx/core/view/WindowInsetsCompat;

.field public final windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;


# direct methods
.method public constructor <init>(Landroidx/window/core/Bounds;Landroidx/window/layout/WindowLayoutInfo;Landroidx/core/view/WindowInsetsCompat;Landroid/content/res/Configuration;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    iput-object p2, p0, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    iput-object p3, p0, Landroidx/window/embedding/ParentContainerInfo;->windowInsets:Landroidx/core/view/WindowInsetsCompat;

    iput-object p4, p0, Landroidx/window/embedding/ParentContainerInfo;->configuration:Landroid/content/res/Configuration;

    iput p5, p0, Landroidx/window/embedding/ParentContainerInfo;->density:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/ParentContainerInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/window/embedding/ParentContainerInfo;

    iget-object v1, p1, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    iget-object v3, p0, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    iget-object v3, p1, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowInsets:Landroidx/core/view/WindowInsetsCompat;

    iget-object v3, p1, Landroidx/window/embedding/ParentContainerInfo;->windowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, p1, Landroidx/window/embedding/ParentContainerInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Landroidx/window/embedding/ParentContainerInfo;->density:F

    iget p1, p1, Landroidx/window/embedding/ParentContainerInfo;->density:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    invoke-virtual {v0}, Landroidx/window/core/Bounds;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    iget-object v2, v2, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Landroidx/window/embedding/ParentContainerInfo;->windowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/window/embedding/ParentContainerInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroidx/window/embedding/ParentContainerInfo;->density:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParentContainerInfo(windowBounds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowLayoutInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/window/embedding/ParentContainerInfo;->density:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
