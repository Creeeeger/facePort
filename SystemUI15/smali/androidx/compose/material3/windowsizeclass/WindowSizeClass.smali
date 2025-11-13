.class public final Landroidx/compose/material3/windowsizeclass/WindowSizeClass;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/material3/windowsizeclass/WindowSizeClass$Companion;


# instance fields
.field public final heightSizeClass:I

.field public final widthSizeClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/windowsizeclass/WindowSizeClass$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/windowsizeclass/WindowSizeClass$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->Companion:Landroidx/compose/material3/windowsizeclass/WindowSizeClass$Companion;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->widthSizeClass:I

    iput p2, p0, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->heightSizeClass:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;-><init>(II)V

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

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;

    iget v2, p0, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->widthSizeClass:I

    iget v3, p1, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->widthSizeClass:I

    invoke-static {v2, v3}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget p0, p0, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->heightSizeClass:I

    iget p1, p1, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->heightSizeClass:I

    invoke-static {p0, p1}, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->Companion:Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;

    iget v0, p0, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->widthSizeClass:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    sget-object v1, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;->Companion:Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass$Companion;

    iget p0, p0, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->heightSizeClass:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowSizeClass("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->widthSizeClass:I

    invoke-static {v1}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->heightSizeClass:I

    invoke-static {p0}, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
