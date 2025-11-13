.class public final Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;-><init>()V

    return-void
.end method

.method public static breakpoint-fhkHA5s(I)F
    .locals 1

    sget v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->Expanded:I

    invoke-static {p0, v0}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x348

    int-to-float p0, p0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->Medium:I

    invoke-static {p0, v0}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x258

    int-to-float p0, p0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    int-to-float p0, p0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    :goto_0
    return p0
.end method
