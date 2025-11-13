.class public abstract Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.super Ljava/lang/Object;
.source "SprObjectBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist TYPE_CIRCLE:B = 0x1t

.field public static final blacklist TYPE_ELLIPSE:B = 0x2t

.field public static final blacklist TYPE_GROUP:B = 0x10t

.field public static final blacklist TYPE_LINE:B = 0x3t

.field public static final blacklist TYPE_NONE:B = 0x0t

.field public static final blacklist TYPE_PATH:B = 0x4t

.field public static final blacklist TYPE_RECTANGLE:B = 0x5t

.field public static final blacklist TYPE_USE:B = 0x11t

.field private static final blacklist sCapArray:[Landroid/graphics/Paint$Cap;

.field private static final blacklist sJoinArray:[Landroid/graphics/Paint$Join;


# instance fields
.field public blacklist alpha:F

.field public blacklist fillPaint:Landroid/graphics/Paint;

.field public blacklist hasFillAnimation:Z

.field public blacklist hasStrokeAnimation:Z

.field public blacklist isVisibleFill:Z

.field public blacklist isVisibleStroke:Z

.field public blacklist mAttributeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

.field public final blacklist mType:B

.field public blacklist shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

.field public blacklist strokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 32
    const-class v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 52
    new-array v0, v0, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sJoinArray:[Landroid/graphics/Paint$Join;

    return-void
.end method

.method protected constructor blacklist <init>(B)V
    .locals 2
    .param p1, "type"    # B

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasFillAnimation:Z

    .line 76
    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 77
    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    .line 78
    return-void
.end method

.method private blacklist applyPreAttribute(Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "strokePaint"    # Landroid/graphics/Paint;
    .param p2, "fillPaint"    # Landroid/graphics/Paint;

    .line 341
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 342
    .local v1, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 426
    sget-object v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not supported type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 422
    :sswitch_0
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iput-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    .line 423
    goto/16 :goto_3

    .line 419
    :sswitch_1
    goto/16 :goto_3

    .line 412
    :sswitch_2
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 414
    goto/16 :goto_3

    .line 408
    :sswitch_3
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 409
    goto :goto_3

    .line 404
    :sswitch_4
    sget-object v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sJoinArray:[Landroid/graphics/Paint$Join;

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    iget-byte v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 405
    goto :goto_3

    .line 400
    :sswitch_5
    sget-object v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sCapArray:[Landroid/graphics/Paint$Cap;

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    iget-byte v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 401
    goto :goto_3

    .line 375
    :sswitch_6
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    .line 376
    .local v2, "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    iget-byte v6, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->colorType:B

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 393
    :pswitch_0
    iput-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    .line 394
    iget-object v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    .line 389
    :pswitch_1
    goto :goto_1

    .line 382
    :pswitch_2
    iput-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    .line 383
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 384
    iget v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    goto :goto_1

    .line 378
    :pswitch_3
    iput-boolean v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    .line 379
    nop

    .line 397
    :goto_1
    goto :goto_3

    .line 349
    .end local v2    # "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :sswitch_7
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    .line 350
    .local v2, "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    iget-byte v6, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->colorType:B

    packed-switch v6, :pswitch_data_1

    goto :goto_2

    .line 367
    :pswitch_4
    iput-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    .line 368
    iget-object v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 363
    :pswitch_5
    goto :goto_2

    .line 356
    :pswitch_6
    iput-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    .line 357
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 358
    iget v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    goto :goto_2

    .line 352
    :pswitch_7
    iput-boolean v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    .line 353
    nop

    .line 372
    :goto_2
    goto :goto_3

    .line 346
    .end local v2    # "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :sswitch_8
    nop

    .line 429
    .end local v1    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    :goto_3
    goto/16 :goto_0

    .line 430
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x3 -> :sswitch_8
        0x20 -> :sswitch_7
        0x23 -> :sswitch_6
        0x25 -> :sswitch_5
        0x26 -> :sswitch_4
        0x28 -> :sswitch_3
        0x29 -> :sswitch_2
        0x40 -> :sswitch_1
        0x61 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist loadAttributeFromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 7
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v2

    .line 118
    .local v2, "id":I
    const/4 v3, 0x0

    .line 120
    .local v3, "size":I
    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    const/16 v5, 0x3030

    if-lt v4, v5, :cond_0

    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    const/16 v5, 0x3032

    if-lt v4, v5, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v3

    .line 124
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 174
    sget-object v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown attribute id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    goto/16 :goto_1

    .line 170
    :sswitch_0
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    goto/16 :goto_1

    .line 165
    :sswitch_1
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    goto :goto_1

    .line 161
    :sswitch_2
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    goto :goto_1

    .line 157
    :sswitch_3
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    goto :goto_1

    .line 153
    :sswitch_4
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    goto :goto_1

    .line 149
    :sswitch_5
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    goto :goto_1

    .line 145
    :sswitch_6
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    goto :goto_1

    .line 141
    :sswitch_7
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    goto :goto_1

    .line 137
    :sswitch_8
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_1

    .line 133
    :sswitch_9
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    goto :goto_1

    .line 129
    :sswitch_a
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    goto :goto_1

    .line 126
    :sswitch_b
    nop

    .line 116
    .end local v2    # "id":I
    .end local v3    # "size":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 179
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_a
        0x3 -> :sswitch_9
        0x20 -> :sswitch_8
        0x23 -> :sswitch_7
        0x25 -> :sswitch_6
        0x26 -> :sswitch_5
        0x28 -> :sswitch_4
        0x29 -> :sswitch_3
        0x40 -> :sswitch_2
        0x61 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist saveAttributeToSPR(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 185
    .local v1, "object":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 186
    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 187
    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 188
    .end local v1    # "object":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V
    .locals 1
    .param p1, "attribute"    # Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public blacklist applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V
    .locals 10
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "alpha"    # F

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "reference":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 196
    .local v2, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/high16 v4, 0x437f0000    # 255.0f

    sparse-switch v3, :sswitch_data_0

    .line 283
    sget-object v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is not supported type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 279
    :sswitch_0
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 280
    goto/16 :goto_1

    .line 276
    :sswitch_1
    goto/16 :goto_1

    .line 261
    :sswitch_2
    iget-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    mul-float/2addr v4, p3

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    .line 251
    :sswitch_3
    iget-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    mul-float/2addr v4, p3

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    .line 204
    :sswitch_4
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;->link:I

    invoke-virtual {p1, v3}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_2

    .line 206
    iget-byte v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    sparse-switch v3, :sswitch_data_1

    .line 245
    goto/16 :goto_1

    .line 242
    :sswitch_5
    goto/16 :goto_1

    .line 234
    :sswitch_6
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v5, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->left:F

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v6, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->top:F

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v7, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->right:F

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v8, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->bottom:F

    sget-object v9, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 237
    goto :goto_1

    .line 230
    :sswitch_7
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 231
    goto :goto_1

    .line 227
    :sswitch_8
    goto :goto_1

    .line 217
    :sswitch_9
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 218
    .local v3, "path":Landroid/graphics/Path;
    new-instance v4, Landroid/graphics/RectF;

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->left:F

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v6, v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->top:F

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v7, v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->right:F

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v8, v8, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 221
    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 223
    .end local v3    # "path":Landroid/graphics/Path;
    goto :goto_1

    .line 209
    :sswitch_a
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 210
    .restart local v3    # "path":Landroid/graphics/Path;
    move-object v4, v0

    check-cast v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    iget v6, v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 212
    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 214
    .end local v3    # "path":Landroid/graphics/Path;
    goto :goto_1

    .line 198
    :sswitch_b
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;

    .line 199
    .local v3, "clip":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;
    iget v5, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->left:F

    iget v6, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->top:F

    iget v7, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->right:F

    iget v8, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->bottom:F

    sget-object v9, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 201
    .end local v3    # "clip":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;
    nop

    .line 286
    .end local v2    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    :cond_2
    :goto_1
    goto/16 :goto_0

    .line 287
    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x3 -> :sswitch_4
        0x20 -> :sswitch_3
        0x23 -> :sswitch_2
        0x25 -> :sswitch_1
        0x26 -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x40 -> :sswitch_0
        0x61 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
    .end sparse-switch
.end method

.method protected blacklist clearShadowLayer()V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    if-nez v0, :cond_0

    .line 453
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 457
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 458
    return-void
.end method

.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 462
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 464
    .local v0, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    .line 466
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 467
    .local v2, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v2    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    goto :goto_0

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 471
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    .line 474
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    .line 477
    :cond_2
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    iput v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    .line 479
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    return-void
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 0
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->loadAttributeFromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 97
    return-void
.end method

.method public blacklist getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public blacklist getSPRSize()I
    .locals 4

    .line 105
    const/4 v0, 0x4

    .line 106
    .local v0, "size":I
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 107
    .local v2, "object":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v0, v3

    .line 108
    .end local v2    # "object":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    goto :goto_0

    .line 110
    :cond_0
    return v0
.end method

.method public blacklist getTotalAttributeCount()I
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract blacklist getTotalElementCount()I
.end method

.method public abstract blacklist getTotalSegmentCount()I
.end method

.method public blacklist preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 7
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 290
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iget-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    .line 294
    return-void

    .line 291
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V
    .locals 3
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "strokePaint"    # Landroid/graphics/Paint;
    .param p3, "fillPaint"    # Landroid/graphics/Paint;
    .param p4, "isVisibleStroke"    # Z
    .param p5, "isVisibleFill"    # Z
    .param p6, "shadow"    # Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    .line 298
    move-object v0, p2

    .line 299
    .local v0, "newStrokePaint":Landroid/graphics/Paint;
    move-object v1, p3

    .line 301
    .local v1, "newFillPaint":Landroid/graphics/Paint;
    iput-boolean p4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    .line 302
    iput-boolean p5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    .line 303
    iput-object p6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    .line 305
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 306
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    .line 307
    if-eqz p2, :cond_0

    .line 308
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object v0, v2

    goto :goto_0

    .line 310
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object v0, v2

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    .line 314
    if-eqz p2, :cond_2

    .line 315
    invoke-virtual {p2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 316
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 319
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_4

    .line 320
    if-eqz p3, :cond_3

    .line 321
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object v1, v2

    goto :goto_1

    .line 323
    :cond_3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object v1, v2

    goto :goto_1

    .line 326
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    .line 327
    if-eqz p3, :cond_5

    .line 328
    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 329
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 332
    :cond_5
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->applyPreAttribute(Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 335
    :cond_6
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    .line 336
    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    .line 337
    return-void
.end method

.method public blacklist removeAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V
    .locals 1
    .param p1, "attribute"    # Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method protected blacklist setShadowLayer()V
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    if-nez v0, :cond_0

    .line 434
    return-void

    .line 437
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    const v2, 0x3f13cd36

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v1, :cond_3

    .line 438
    iget v0, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    .line 439
    .local v0, "radius":F
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v0, v1

    .line 442
    :cond_1
    cmpg-float v1, v0, v3

    if-gtz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    sub-float v1, v0, v3

    div-float/2addr v1, v2

    :goto_0
    move v0, v1

    .line 443
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .end local v0    # "radius":F
    goto :goto_2

    .line 444
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v1, :cond_5

    .line 445
    iget v0, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    .line 446
    .restart local v0    # "radius":F
    cmpg-float v1, v0, v3

    if-gtz v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    sub-float v1, v0, v3

    div-float/2addr v1, v2

    :goto_1
    move v0, v1

    .line 447
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_3

    .line 444
    .end local v0    # "radius":F
    :cond_5
    :goto_2
    nop

    .line 449
    :goto_3
    return-void
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->saveAttributeToSPR(Ljava/io/DataOutputStream;)V

    .line 101
    return-void
.end method
