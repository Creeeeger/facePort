.class public final Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/features/composable/ComposableType;


# instance fields
.field public final iconFrame:Landroidx/picker/features/composable/ComposableFrame;

.field public final leftFrame:Landroidx/picker/features/composable/ComposableFrame;

.field public final titleFrame:Landroidx/picker/features/composable/ComposableFrame;

.field public final widgetFrame:Landroidx/picker/features/composable/ComposableFrame;


# direct methods
.method public constructor <init>(Landroidx/picker/features/composable/ComposableFrame;Landroidx/picker/features/composable/ComposableFrame;Landroidx/picker/features/composable/ComposableFrame;Landroidx/picker/features/composable/ComposableFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->leftFrame:Landroidx/picker/features/composable/ComposableFrame;

    iput-object p2, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->iconFrame:Landroidx/picker/features/composable/ComposableFrame;

    iput-object p3, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->titleFrame:Landroidx/picker/features/composable/ComposableFrame;

    iput-object p4, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->widgetFrame:Landroidx/picker/features/composable/ComposableFrame;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;

    iget-object v1, p1, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->leftFrame:Landroidx/picker/features/composable/ComposableFrame;

    iget-object v3, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->leftFrame:Landroidx/picker/features/composable/ComposableFrame;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->iconFrame:Landroidx/picker/features/composable/ComposableFrame;

    iget-object v3, p1, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->iconFrame:Landroidx/picker/features/composable/ComposableFrame;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->titleFrame:Landroidx/picker/features/composable/ComposableFrame;

    iget-object v3, p1, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->titleFrame:Landroidx/picker/features/composable/ComposableFrame;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->widgetFrame:Landroidx/picker/features/composable/ComposableFrame;

    iget-object p1, p1, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->widgetFrame:Landroidx/picker/features/composable/ComposableFrame;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getIconFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->iconFrame:Landroidx/picker/features/composable/ComposableFrame;

    return-object p0
.end method

.method public final getLeftFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->leftFrame:Landroidx/picker/features/composable/ComposableFrame;

    return-object p0
.end method

.method public final getTitleFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->titleFrame:Landroidx/picker/features/composable/ComposableFrame;

    return-object p0
.end method

.method public final getWidgetFrame()Landroidx/picker/features/composable/ComposableFrame;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->widgetFrame:Landroidx/picker/features/composable/ComposableFrame;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->leftFrame:Landroidx/picker/features/composable/ComposableFrame;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->iconFrame:Landroidx/picker/features/composable/ComposableFrame;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->titleFrame:Landroidx/picker/features/composable/ComposableFrame;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->widgetFrame:Landroidx/picker/features/composable/ComposableFrame;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComposableTypeImpl(leftFrame="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->leftFrame:Landroidx/picker/features/composable/ComposableFrame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->iconFrame:Landroidx/picker/features/composable/ComposableFrame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", titleFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->titleFrame:Landroidx/picker/features/composable/ComposableFrame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widgetFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableType$ComposableTypeImpl;->widgetFrame:Landroidx/picker/features/composable/ComposableFrame;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
