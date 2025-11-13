.class public abstract Landroidx/compose/ui/graphics/colorspace/ConnectorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Connectors:Landroidx/collection/MutableIntObjectMap;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    iget v1, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v3, v1, 0x6

    or-int/2addr v1, v3

    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Connector;->Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Relative:I

    new-instance v3, Landroidx/compose/ui/graphics/colorspace/Connector$Companion$identity$1;

    invoke-direct {v3, v0, v2}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion$identity$1;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)V

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Oklab:Landroidx/compose/ui/graphics/colorspace/Oklab;

    iget v4, v2, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    shl-int/lit8 v4, v4, 0x6

    iget v5, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    or-int/2addr v4, v5

    new-instance v6, Landroidx/compose/ui/graphics/colorspace/Connector;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v0, v2, v7, v8}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    shl-int/lit8 v5, v5, 0x6

    iget v9, v2, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    or-int/2addr v5, v9

    new-instance v9, Landroidx/compose/ui/graphics/colorspace/Connector;

    invoke-direct {v9, v2, v0, v7, v8}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/4 v2, 0x1

    invoke-direct {v0, v7, v2, v8}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1, v3}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    invoke-virtual {v0, v4, v6}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    invoke-virtual {v0, v5, v9}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ConnectorKt;->Connectors:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method
