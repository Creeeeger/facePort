.class public final Landroidx/palette/graphics/Palette;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEFAULT_FILTER:Landroidx/palette/graphics/Palette$1;


# instance fields
.field public final mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

.field public final mSelectedSwatches:Landroidx/collection/ArrayMap;

.field public final mSwatches:Ljava/util/List;

.field public final mTargets:Ljava/util/List;

.field public final mUsedColors:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/palette/graphics/Palette$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$1;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    iput-object p2, p0, Landroidx/palette/graphics/Palette;->mTargets:Ljava/util/List;

    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroidx/collection/ArrayMap;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object p2, p0, Landroidx/palette/graphics/Palette;->mSelectedSwatches:Landroidx/collection/ArrayMap;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/high16 p2, -0x80000000

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/palette/graphics/Palette$Swatch;

    iget v3, v2, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    if-le v3, p2, :cond_0

    move-object v1, v2

    move p2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    return-void
.end method
