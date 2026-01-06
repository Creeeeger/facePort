.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v0, v0, 0x4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [D

    new-array v3, v1, [D

    move v4, v0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v2, v5

    goto :goto_1

    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v5

    aget v5, v5, v4

    nop

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v6

    aget v6, v6, v4

    float-to-double v6, v6

    invoke-direct {p0, v6, v7, v2, v3}, Lcom/airbnb/lottie/parser/GradientColorParser;->getOpacityAtPosition(D[D[D)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v6

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private getOpacityAtPosition(D[D[D)I
    .locals 26

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, 0x1

    :goto_0
    array-length v3, v0

    const-wide v4, 0x406fe00000000000L    # 255.0

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    aget-wide v6, v0, v3

    aget-wide v8, v0, v2

    aget-wide v10, v0, v2

    cmpl-double v3, v10, p1

    if-ltz v3, :cond_0

    sub-double v10, p1, v6

    sub-double v12, v8, v6

    div-double v14, v10, v12

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v14 .. v19}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(DDD)D

    move-result-wide v10

    add-int/lit8 v3, v2, -0x1

    aget-wide v20, v1, v3

    aget-wide v22, v1, v2

    move-wide/from16 v24, v10

    invoke-static/range {v20 .. v25}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v12

    mul-double/2addr v12, v4

    double-to-int v3, v12

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    :cond_3
    iget v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    :cond_4
    iget v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v3, v2, [F

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    iget v7, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v7, v7, 0x4

    if-ge v6, v7, :cond_5

    div-int/lit8 v7, v6, 0x4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    rem-int/lit8 v10, v6, 0x4

    const-wide v11, 0x406fe00000000000L    # 255.0

    packed-switch v10, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    mul-double/2addr v11, v8

    double-to-int v10, v11

    const/16 v11, 0xff

    invoke-static {v11, v4, v5, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    aput v11, v2, v7

    goto :goto_3

    :pswitch_1
    mul-double/2addr v11, v8

    double-to-int v5, v11

    goto :goto_3

    :pswitch_2
    mul-double/2addr v11, v8

    double-to-int v4, v11

    goto :goto_3

    :pswitch_3
    double-to-float v10, v8

    aput v10, v3, v7

    nop

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    new-instance v6, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v6, v3, v2}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    invoke-direct {p0, v6, v0}, Lcom/airbnb/lottie/parser/GradientColorParser;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
