.class public final Landroidx/navigation/NavOptions;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final enterAnim:I

.field public final exitAnim:I

.field public final popEnterAnim:I

.field public final popExitAnim:I

.field public final popUpToId:I

.field public final popUpToInclusive:Z

.field public popUpToRoute:Ljava/lang/String;

.field public final popUpToRouteClass:Lkotlin/reflect/KClass;

.field public final popUpToRouteObject:Ljava/lang/Object;

.field public final popUpToSaveState:Z

.field public final restoreState:Z

.field public final singleTop:Z


# direct methods
.method public constructor <init>(ZZIZZIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    iput-boolean p2, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    iput p3, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    iput-boolean p4, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    iput-boolean p5, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    iput p6, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    iput p7, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    iput p8, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    iput p9, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroidx/navigation/NavOptions;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/navigation/NavOptions;

    iget-boolean v2, p1, Landroidx/navigation/NavOptions;->singleTop:Z

    iget-boolean v3, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    if-ne v3, v2, :cond_2

    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->restoreState:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    iget v3, p1, Landroidx/navigation/NavOptions;->popUpToId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    iget-object v3, p1, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lkotlin/reflect/KClass;

    iget-object v3, p1, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lkotlin/reflect/KClass;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/navigation/NavOptions;->popUpToRouteObject:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/navigation/NavOptions;->popUpToRouteObject:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    iget v3, p1, Landroidx/navigation/NavOptions;->enterAnim:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    iget v3, p1, Landroidx/navigation/NavOptions;->exitAnim:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    iget v3, p1, Landroidx/navigation/NavOptions;->popEnterAnim:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    iget p1, p1, Landroidx/navigation/NavOptions;->popExitAnim:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lkotlin/reflect/KClass;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/navigation/NavOptions;->popUpToRouteObject:Ljava/lang/Object;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavOptions("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    if-eqz v1, :cond_0

    const-string v1, "launchSingleTop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    if-eqz v1, :cond_1

    const-string v1, "restoreState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    iget v2, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    iget-object v3, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    const/4 v4, -0x1

    if-nez v3, :cond_2

    if-eq v2, v4, :cond_8

    :cond_2
    if-eqz v3, :cond_8

    const-string v5, "popUpTo("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lkotlin/reflect/KClass;

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroidx/navigation/NavOptions;->popUpToRouteObject:Ljava/lang/Object;

    if-eqz v3, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v3, "0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    if-eqz v2, :cond_6

    const-string v2, " inclusive"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    if-eqz v2, :cond_7

    const-string v2, " saveState"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v2, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    iget v3, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    iget v5, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    iget p0, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    if-ne p0, v4, :cond_9

    if-ne v5, v4, :cond_9

    if-ne v3, v4, :cond_9

    if-eq v2, v4, :cond_a

    :cond_9
    const-string v4, "anim(enterAnim=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exitAnim=0x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " popEnterAnim=0x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " popExitAnim=0x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
