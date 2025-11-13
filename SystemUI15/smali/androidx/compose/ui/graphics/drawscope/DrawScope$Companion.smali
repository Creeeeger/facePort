.class public final Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

.field public static final DefaultBlendMode:I

.field public static final DefaultFilterQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->$$INSTANCE:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->SrcOver:I

    sput v0, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->DefaultBlendMode:I

    sget-object v0, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->Low:I

    sput v0, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->DefaultFilterQuality:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
