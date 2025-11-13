.class public Landroid/content/res/ColorStateList;
.super Landroid/content/res/ComplexColor;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ColorStateList$ColorStateListFactory;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_COLOR:I = -0x10000

.field private static final greylist-max-o EMPTY:[[I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ColorStateList"

.field private static final greylist-max-o sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mChangingConfigurations:I

.field private greylist mColors:[I

.field private greylist mDefaultColor:I

.field private greylist mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

.field private greylist-max-o mIsOpaque:Z

.field private greylist mStateSpecs:[[I

.field private greylist-max-o mThemeAttrs:[[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangingConfigurations(Landroid/content/res/ColorStateList;)I
    .locals 0

    iget p0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 148
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 778
    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 168
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/res/ColorStateList;

    .line 221
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget v0, p1, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 224
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 225
    iget v0, p1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 226
    iget-boolean v0, p1, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iput-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 229
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 230
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 232
    :cond_0
    return-void
.end method

.method public constructor whitelist <init>([[I[I)V
    .locals 0
    .param p1, "states"    # [[I
    .param p2, "colors"    # [I

    .line 174
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 175
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 176
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 178
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 179
    return-void
.end method

.method private greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 11
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 458
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-nez v0, :cond_0

    .line 459
    return-void

    .line 462
    :cond_0
    const/4 v0, 0x0

    .line 464
    .local v0, "hasUnresolvedAttrs":Z
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 465
    .local v1, "themeAttrsList":[[I
    array-length v2, v1

    .line 466
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 467
    aget-object v4, v1, v3

    if-eqz v4, :cond_3

    .line 468
    aget-object v4, v1, v3

    sget-object v5, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 472
    .local v4, "a":Landroid/content/res/TypedArray;
    aget-object v5, v1, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    if-eqz v5, :cond_1

    .line 477
    iget-object v5, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v5, v5, v3

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v5, v7

    .local v5, "defaultAlphaMod":F
    goto :goto_1

    .line 482
    .end local v5    # "defaultAlphaMod":F
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 488
    .restart local v5    # "defaultAlphaMod":F
    :goto_1
    aget-object v7, v1, v3

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v7

    aput-object v7, v1, v3

    .line 489
    aget-object v7, v1, v3

    if-eqz v7, :cond_2

    .line 490
    const/4 v0, 0x1

    .line 493
    :cond_2
    iget-object v7, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v7, v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 495
    .local v6, "baseColor":I
    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 497
    .local v7, "alphaMod":F
    const/4 v8, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 499
    .local v8, "lStar":F
    iget-object v9, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0, v6, v7, v8}, Landroid/content/res/ColorStateList;->modulateColor(IFF)I

    move-result v10

    aput v10, v9, v3

    .line 502
    iget v9, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 504
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "defaultAlphaMod":F
    .end local v6    # "baseColor":I
    .end local v7    # "alphaMod":F
    .end local v8    # "lStar":F
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 508
    .end local v3    # "i":I
    :cond_4
    if-nez v0, :cond_5

    .line 509
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 512
    :cond_5
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 513
    return-void
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 266
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    if-ne v2, v3, :cond_1

    .line 275
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 272
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1}, Landroid/content/res/ColorStateList;-><init>()V

    .line 296
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 297
    return-object v1

    .line 291
    .end local v1    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 25
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 346
    .local v2, "innerDepth":I
    const/4 v4, 0x0

    .line 347
    .local v4, "changingConfigurations":I
    const/high16 v5, -0x10000

    .line 349
    .local v5, "defaultColor":I
    const/4 v6, 0x0

    .line 351
    .local v6, "hasUnresolvedAttrs":Z
    const-class v7, [I

    const/16 v8, 0x14

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 352
    .local v7, "stateSpecList":[[I
    array-length v8, v7

    new-array v8, v8, [[I

    .line 353
    .local v8, "themeAttrsList":[[I
    array-length v9, v7

    new-array v9, v9, [I

    .line 354
    .local v9, "colorList":[I
    const/4 v10, 0x0

    .line 356
    .local v10, "listSize":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v12, v11

    .local v12, "type":I
    if-eq v11, v3, :cond_a

    .line 357
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    move v14, v11

    .local v14, "depth":I
    if-ge v11, v2, :cond_1

    const/4 v11, 0x3

    if-eq v12, v11, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v17, v2

    move/from16 v22, v6

    move/from16 v18, v12

    goto/16 :goto_7

    .line 358
    :cond_1
    :goto_1
    const/4 v11, 0x2

    if-ne v12, v11, :cond_9

    if-gt v14, v2, :cond_9

    .line 359
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v11, "item"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 360
    move/from16 v17, v2

    move/from16 v22, v6

    goto/16 :goto_6

    .line 363
    :cond_2
    sget-object v11, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    move-object/from16 v15, p1

    move-object/from16 v3, p4

    invoke-static {v15, v3, v1, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 365
    .local v11, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v13

    .line 366
    .local v13, "themeAttrs":[I
    move/from16 v17, v2

    .end local v2    # "innerDepth":I
    .local v17, "innerDepth":I
    const v2, -0xff01

    const/4 v3, 0x0

    invoke-virtual {v11, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 367
    .local v2, "baseColor":I
    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v18, v12

    const/4 v12, 0x1

    .end local v12    # "type":I
    .local v18, "type":I
    invoke-virtual {v11, v12, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 368
    .local v3, "alphaMod":F
    const/high16 v12, -0x40800000    # -1.0f

    move/from16 v19, v14

    const/4 v14, 0x2

    .end local v14    # "depth":I
    .local v19, "depth":I
    invoke-virtual {v11, v14, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 370
    .local v12, "lStar":F
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v14

    or-int/2addr v4, v14

    .line 372
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    const/4 v14, 0x0

    .line 376
    .local v14, "j":I
    move/from16 v16, v4

    .end local v4    # "changingConfigurations":I
    .local v16, "changingConfigurations":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v4

    .line 377
    .local v4, "numAttrs":I
    move-object/from16 v20, v11

    .end local v11    # "a":Landroid/content/res/TypedArray;
    .local v20, "a":Landroid/content/res/TypedArray;
    new-array v11, v4, [I

    .line 378
    .local v11, "stateSpec":[I
    const/16 v21, 0x0

    move/from16 v15, v21

    .local v15, "i":I
    :goto_2
    if-ge v15, v4, :cond_5

    .line 379
    move/from16 v21, v4

    .end local v4    # "numAttrs":I
    .local v21, "numAttrs":I
    invoke-interface {v1, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 380
    .local v4, "stateResId":I
    move/from16 v22, v6

    .end local v6    # "hasUnresolvedAttrs":Z
    .local v22, "hasUnresolvedAttrs":Z
    const v6, 0x1010647

    if-ne v4, v6, :cond_3

    .line 382
    goto :goto_4

    .line 384
    :cond_3
    sparse-switch v4, :sswitch_data_0

    .line 390
    add-int/lit8 v6, v14, 0x1

    move/from16 v23, v6

    const/4 v6, 0x0

    .end local v14    # "j":I
    .local v23, "j":I
    invoke-interface {v1, v15, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 391
    move v6, v4

    goto :goto_3

    .line 388
    .end local v23    # "j":I
    .restart local v14    # "j":I
    :sswitch_0
    goto :goto_4

    .line 391
    .end local v14    # "j":I
    .restart local v23    # "j":I
    :cond_4
    neg-int v6, v4

    :goto_3
    aput v6, v11, v14

    move/from16 v14, v23

    .line 378
    .end local v4    # "stateResId":I
    .end local v23    # "j":I
    .restart local v14    # "j":I
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v21

    move/from16 v6, v22

    goto :goto_2

    .end local v21    # "numAttrs":I
    .end local v22    # "hasUnresolvedAttrs":Z
    .local v4, "numAttrs":I
    .restart local v6    # "hasUnresolvedAttrs":Z
    :cond_5
    move/from16 v21, v4

    move/from16 v22, v6

    .line 394
    .end local v4    # "numAttrs":I
    .end local v6    # "hasUnresolvedAttrs":Z
    .end local v15    # "i":I
    .restart local v21    # "numAttrs":I
    .restart local v22    # "hasUnresolvedAttrs":Z
    invoke-static {v11, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v4

    .line 399
    .end local v11    # "stateSpec":[I
    .local v4, "stateSpec":[I
    invoke-direct {v0, v2, v3, v12}, Landroid/content/res/ColorStateList;->modulateColor(IFF)I

    move-result v6

    .line 401
    .local v6, "color":I
    if-eqz v10, :cond_6

    array-length v11, v4

    if-nez v11, :cond_7

    .line 402
    :cond_6
    move v5, v6

    .line 405
    :cond_7
    if-eqz v13, :cond_8

    .line 406
    const/4 v11, 0x1

    .end local v22    # "hasUnresolvedAttrs":Z
    .local v11, "hasUnresolvedAttrs":Z
    goto :goto_5

    .line 405
    .end local v11    # "hasUnresolvedAttrs":Z
    .restart local v22    # "hasUnresolvedAttrs":Z
    :cond_8
    move/from16 v11, v22

    .line 409
    .end local v22    # "hasUnresolvedAttrs":Z
    .restart local v11    # "hasUnresolvedAttrs":Z
    :goto_5
    invoke-static {v9, v10, v6}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v9

    .line 410
    invoke-static {v8, v10, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    move-object v8, v15

    check-cast v8, [[I

    .line 411
    invoke-static {v7, v10, v4}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    move-object v7, v15

    check-cast v7, [[I

    .line 412
    nop

    .end local v2    # "baseColor":I
    .end local v3    # "alphaMod":F
    .end local v4    # "stateSpec":[I
    .end local v6    # "color":I
    .end local v12    # "lStar":F
    .end local v13    # "themeAttrs":[I
    .end local v14    # "j":I
    .end local v20    # "a":Landroid/content/res/TypedArray;
    .end local v21    # "numAttrs":I
    add-int/lit8 v10, v10, 0x1

    .line 413
    move v6, v11

    move/from16 v4, v16

    move/from16 v2, v17

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 358
    .end local v11    # "hasUnresolvedAttrs":Z
    .end local v16    # "changingConfigurations":I
    .end local v17    # "innerDepth":I
    .end local v18    # "type":I
    .end local v19    # "depth":I
    .local v2, "innerDepth":I
    .local v4, "changingConfigurations":I
    .local v6, "hasUnresolvedAttrs":Z
    .local v12, "type":I
    .local v14, "depth":I
    :cond_9
    move/from16 v17, v2

    move/from16 v22, v6

    move/from16 v18, v12

    move/from16 v19, v14

    .line 356
    .end local v2    # "innerDepth":I
    .end local v6    # "hasUnresolvedAttrs":Z
    .end local v12    # "type":I
    .end local v14    # "depth":I
    .restart local v17    # "innerDepth":I
    .restart local v22    # "hasUnresolvedAttrs":Z
    :goto_6
    move/from16 v2, v17

    move/from16 v6, v22

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v17    # "innerDepth":I
    .end local v22    # "hasUnresolvedAttrs":Z
    .restart local v2    # "innerDepth":I
    .restart local v6    # "hasUnresolvedAttrs":Z
    .restart local v12    # "type":I
    :cond_a
    move/from16 v17, v2

    move/from16 v22, v6

    move/from16 v18, v12

    .line 415
    .end local v2    # "innerDepth":I
    .end local v6    # "hasUnresolvedAttrs":Z
    .end local v12    # "type":I
    .restart local v17    # "innerDepth":I
    .restart local v18    # "type":I
    .restart local v22    # "hasUnresolvedAttrs":Z
    :goto_7
    iput v4, v0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 416
    iput v5, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 418
    if-eqz v22, :cond_b

    .line 419
    new-array v2, v10, [[I

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 420
    const/4 v3, 0x0

    invoke-static {v8, v3, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    .line 422
    :cond_b
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 425
    :goto_8
    new-array v2, v10, [I

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 426
    new-array v3, v10, [[I

    iput-object v3, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 427
    const/4 v3, 0x0

    invoke-static {v9, v3, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    iget-object v2, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v7, v3, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    invoke-direct/range {p0 .. p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 431
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10101a5 -> :sswitch_0
        0x101031f -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist modulateColor(IFF)I
    .locals 6
    .param p1, "baseColor"    # I
    .param p2, "alphaMod"    # F
    .param p3, "lStar"    # F

    .line 550
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 551
    .local v0, "validLStar":Z
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 552
    return p1

    .line 555
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 556
    .local v2, "baseAlpha":I
    int-to-float v3, v2

    mul-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0xff

    invoke-static {v3, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 558
    .local v1, "alpha":I
    if-eqz v0, :cond_2

    .line 559
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->colorToCAM(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v3

    .line 560
    .local v3, "baseCam":Lcom/android/internal/graphics/cam/Cam;
    invoke-virtual {v3}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v5

    invoke-static {v4, v5, p3}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result p1

    .line 563
    .end local v3    # "baseCam":Lcom/android/internal/graphics/cam/Cam;
    :cond_2
    const v3, 0xffffff

    and-int/2addr v3, p1

    shl-int/lit8 v4, v1, 0x18

    or-int/2addr v3, v4

    return v3
.end method

.method private greylist-max-r onColorsChanged()V
    .locals 8

    .line 697
    const/high16 v0, -0x10000

    .line 698
    .local v0, "defaultColor":I
    const/4 v1, 0x1

    .line 700
    .local v1, "isOpaque":Z
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 701
    .local v2, "states":[[I
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 702
    .local v3, "colors":[I
    array-length v4, v2

    .line 703
    .local v4, "N":I
    if-lez v4, :cond_3

    .line 704
    const/4 v5, 0x0

    aget v0, v3, v5

    .line 706
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_0
    if-lez v5, :cond_1

    .line 707
    aget-object v6, v2, v5

    array-length v6, v6

    if-nez v6, :cond_0

    .line 708
    aget v0, v3, v5

    .line 709
    goto :goto_1

    .line 706
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 713
    .end local v5    # "i":I
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v4, :cond_3

    .line 714
    aget v6, v3, v5

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_2

    .line 715
    const/4 v1, 0x0

    .line 716
    goto :goto_3

    .line 713
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 721
    .end local v5    # "i":I
    :cond_3
    :goto_3
    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 722
    iput-boolean v1, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 723
    return-void
.end method

.method public static whitelist valueOf(I)Landroid/content/res/ColorStateList;
    .locals 7
    .param p0, "color"    # I

    .line 186
    sget-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 188
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 189
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    .line 190
    .local v2, "cached":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_0

    .line 191
    monitor-exit v0

    return-object v2

    .line 195
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 199
    .end local v2    # "cached":Landroid/content/res/ColorStateList;
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 200
    .local v2, "N":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 201
    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 202
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 200
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 206
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Landroid/content/res/ColorStateList;->EMPTY:[[I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p0, v5, v6

    invoke-direct {v3, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 207
    .local v3, "csl":Landroid/content/res/ColorStateList;
    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    monitor-exit v0

    return-object v3

    .line 209
    .end local v1    # "index":I
    .end local v2    # "N":I
    .end local v3    # "csl":Landroid/content/res/ColorStateList;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public greylist canApplyTheme()Z
    .locals 1

    .line 444
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 546
    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColorForState([II)I
    .locals 4
    .param p1, "stateSet"    # [I
    .param p2, "defaultColor"    # I

    .line 611
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    .line 612
    .local v0, "setLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 613
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    .line 614
    .local v2, "stateSpec":[I
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    return v3

    .line 612
    .end local v2    # "stateSpec":[I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    .end local v1    # "i":I
    :cond_1
    return p2
.end method

.method public greylist getColors()[I
    .locals 1

    .line 652
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object v0
.end method

.method public greylist-max-o getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    if-nez v0, :cond_0

    .line 731
    new-instance v0, Landroid/content/res/ColorStateList$ColorStateListFactory;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;-><init>(Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    .line 733
    :cond_0
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    return-object v0
.end method

.method public whitelist getDefaultColor()I
    .locals 1

    .line 628
    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public greylist getStates()[[I
    .locals 1

    .line 640
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object v0
.end method

.method public greylist-max-o hasFocusStateSpecified()Z
    .locals 2

    .line 585
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    const v1, 0x101009c

    invoke-static {v0, v1}, Landroid/util/StateSet;->containsAttribute([[II)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasState(I)Z
    .locals 8
    .param p1, "state"    # I

    .line 668
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 669
    .local v0, "stateSpecs":[[I
    array-length v1, v0

    .line 670
    .local v1, "specCount":I
    const/4 v2, 0x0

    .local v2, "specIndex":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 671
    aget-object v3, v0, v2

    .line 672
    .local v3, "states":[I
    array-length v4, v3

    .line 673
    .local v4, "stateCount":I
    const/4 v5, 0x0

    .local v5, "stateIndex":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 674
    aget v6, v3, v5

    if-eq v6, p1, :cond_1

    aget v6, v3, v5

    not-int v7, p1

    if-ne v6, v7, :cond_0

    goto :goto_2

    .line 673
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 675
    :cond_1
    :goto_2
    const/4 v6, 0x1

    return v6

    .line 670
    .end local v3    # "states":[I
    .end local v4    # "stateCount":I
    .end local v5    # "stateIndex":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    .end local v2    # "specIndex":I
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist isOpaque()Z
    .locals 1

    .line 596
    iget-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return v0
.end method

.method public whitelist isStateful()Z
    .locals 4

    .line 576
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    aget-object v0, v0, v2

    array-length v0, v0

    if-lez v0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method public greylist-max-r obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 527
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;)V

    .line 532
    .local v0, "clone":Landroid/content/res/ColorStateList;
    invoke-direct {v0, p1}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 533
    return-object v0

    .line 528
    .end local v0    # "clone":Landroid/content/res/ColorStateList;
    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic greylist-max-r obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mThemeAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 685
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 687
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 688
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    return-object v0
.end method

.method public whitelist withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "alpha"    # I

    .line 309
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 310
    .local v0, "colors":[I
    array-length v1, v0

    .line 311
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 312
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v2

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public whitelist withLStar(F)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "lStar"    # F

    .line 327
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 328
    .local v0, "colors":[I
    array-length v1, v0

    .line 329
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 330
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4, p1}, Landroid/content/res/ColorStateList;->modulateColor(IFF)I

    move-result v3

    aput v3, v0, v2

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 767
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    const-string v0, "ColorStateList"

    const-string v1, "Wrote partially-resolved ColorStateList to parcel!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    .line 771
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 773
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 772
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 775
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 776
    return-void
.end method
