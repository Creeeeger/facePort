.class public final Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final AllSizeClassList:Ljava/util/List;

.field public static final AllSizeClasses:Ljava/util/Set;

.field public static final Companion:Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;

.field public static final DefaultSizeClasses:Ljava/util/Set;

.field public static final Expanded:I

.field public static final Medium:I


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->Companion:Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->Medium:I

    const/4 v1, 0x2

    sput v1, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->Expanded:I

    new-instance v2, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;-><init>(I)V

    new-instance v4, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    invoke-direct {v4, v0}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;-><init>(I)V

    new-instance v5, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    invoke-direct {v5, v1}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;-><init>(I)V

    filled-new-array {v2, v4, v5}, [Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->DefaultSizeClasses:Ljava/util/Set;

    new-instance v2, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    invoke-direct {v2, v1}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;-><init>(I)V

    new-instance v1, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    invoke-direct {v1, v0}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;-><init>(I)V

    new-instance v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    invoke-direct {v0, v3}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;-><init>(I)V

    filled-new-array {v2, v1, v0}, [Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->AllSizeClassList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->AllSizeClasses:Ljava/util/Set;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->value:I

    return-void
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;
    .locals 1

    new-instance v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    invoke-direct {v0, p0}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;-><init>(I)V

    return-object v0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Compact"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->Medium:I

    invoke-static {p0, v0}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Medium"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->Expanded:I

    invoke-static {p0, v0}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Expanded"

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    const-string v0, "WindowWidthSizeClass."

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    iget p1, p1, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->value:I

    iget p0, p0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->value:I

    sget-object v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->Companion:Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;->breakpoint-fhkHA5s(I)F

    move-result p0

    invoke-static {p1}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;->breakpoint-fhkHA5s(I)F

    move-result p1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    iget p0, p0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->value:I

    instance-of v0, p1, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    iget p1, p1, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->value:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->value:I

    invoke-static {p0}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
