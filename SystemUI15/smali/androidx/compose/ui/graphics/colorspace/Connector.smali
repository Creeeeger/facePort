.class public Landroidx/compose/ui/graphics/colorspace/Connector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;


# instance fields
.field public final destination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

.field public final transform:[F

.field public final transformDestination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

.field public final transformSource:Landroidx/compose/ui/graphics/colorspace/ColorSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Connector;->Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)V
    .locals 14

    move-object v1, p1

    move-object/from16 v2, p2

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-wide v5, v1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    sget-object v7, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v7, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Rgb:J

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-static {p1, v5}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->adapt$default(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    iget-wide v9, v2, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    invoke-static {v2, v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->adapt$default(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    sget-object v9, Landroidx/compose/ui/graphics/colorspace/Connector;->Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Absolute:I

    move/from16 v10, p3

    invoke-static {v10, v9}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->equals-impl0(II)Z

    move-result v9

    const/4 v11, 0x0

    if-nez v9, :cond_2

    goto :goto_5

    :cond_2
    iget-wide v12, v1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    invoke-static {v12, v13, v7, v8}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v9

    iget-wide v12, v2, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    invoke-static {v12, v13, v7, v8}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v7

    if-eqz v9, :cond_3

    if-eqz v7, :cond_3

    goto :goto_5

    :cond_3
    if-nez v9, :cond_4

    if-eqz v7, :cond_8

    :cond_4
    if-eqz v9, :cond_5

    move-object v8, v1

    goto :goto_2

    :cond_5
    move-object v8, v2

    :goto_2
    check-cast v8, Landroidx/compose/ui/graphics/colorspace/Rgb;

    iget-object v8, v8, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v9

    goto :goto_3

    :cond_6
    sget-object v9, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50Xyz:[F

    :goto_3
    if-eqz v7, :cond_7

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v7

    goto :goto_4

    :cond_7
    sget-object v7, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/graphics/colorspace/Illuminant;->D50Xyz:[F

    :goto_4
    aget v8, v9, v4

    aget v11, v7, v4

    div-float/2addr v8, v11

    aget v11, v9, v3

    aget v12, v7, v3

    div-float/2addr v11, v12

    aget v9, v9, v0

    aget v7, v7, v0

    div-float/2addr v9, v7

    const/4 v7, 0x3

    new-array v7, v7, [F

    aput v8, v7, v4

    aput v11, v7, v3

    aput v9, v7, v0

    move-object v11, v7

    :cond_8
    :goto_5
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v6

    move/from16 v5, p3

    move-object v6, v11

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)V

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->destination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    iput-object p3, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transformSource:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    iput-object p4, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transformDestination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    iput-object p6, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transform:[F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[F)V

    return-void
.end method


# virtual methods
.method public transformToColor-l2rxGTc$ui_graphics_release(J)J
    .locals 9

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result v2

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v7

    iget-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transformSource:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->toXy$ui_graphics_release(FFF)J

    move-result-wide v3

    const/16 p2, 0x20

    shr-long v5, v3, p2

    long-to-int p2, v5

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {p1, v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->toZ$ui_graphics_release(FFF)F

    move-result p1

    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transform:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float/2addr p2, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    mul-float/2addr v3, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    mul-float/2addr p1, v0

    :cond_0
    move v6, p1

    move v4, p2

    move v5, v3

    iget-object v3, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transformDestination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    iget-object v8, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->destination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->xyzaToColor-JlNiLsg$ui_graphics_release(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method
