.class final Landroid/hardware/input/KeyboardLayoutPreviewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyboardLayoutPreviewDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;,
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;
    }
.end annotation


# static fields
.field private static final blacklist GRAVITY_BOTTOM:I = 0x8

.field private static final blacklist GRAVITY_LEFT:I = 0x1

.field private static final blacklist GRAVITY_RIGHT:I = 0x2

.field private static final blacklist GRAVITY_TOP:I = 0x4

.field private static final blacklist KEYBOARD_PADDING_IN_DP:I = 0xa

.field private static final blacklist KEYBOARD_RADIUS_IN_DP:I = 0xa

.field private static final blacklist KEY_PADDING_IN_DP:I = 0x3

.field private static final blacklist KEY_RADIUS_IN_DP:I = 0x5

.field private static final blacklist MAX_GLYPH_TEXT_SIZE_IN_SP:I = 0x14

.field private static final blacklist MIN_GLYPH_TEXT_SIZE_IN_SP:I = 0xa

.field private static final blacklist TAG:Ljava/lang/String; = "KeyboardLayoutPreview"

.field private static final blacklist TEXT_PADDING_IN_DP:I = 0x1


# instance fields
.field private final blacklist mHeight:I

.field private final blacklist mKeyDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

.field private final blacklist mKeyboardBackground:Landroid/graphics/RectF;

.field private final blacklist mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

.field private final blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFillPaint(I)Landroid/graphics/Paint;
    .locals 0

    invoke-static {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->createFillPaint(I)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    invoke-static {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->createGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateTextPaint(IFLandroid/graphics/Typeface;)Landroid/graphics/Paint;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->createTextPaint(IFLandroid/graphics/Typeface;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/input/PhysicalKeyLayout;II)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyboardBackground:Landroid/graphics/RectF;

    iput p3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mWidth:I

    iput p4, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mHeight:I

    new-instance v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;-><init>(Landroid/content/Context;Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider-IA;)V

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    iput-object p2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

    return-void
.end method

.method private static blacklist createFillPaint(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method private static blacklist createGreyedOutPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-object v0
.end method

.method private static blacklist createTextPaint(IFLandroid/graphics/Typeface;)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetBackgroundRadius(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v0

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyboardBackground:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetBackgroundPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;

    invoke-interface {v2, p1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mWidth:I

    return v0
.end method

.method public whitelist getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 38

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

    invoke-virtual {v1}, Landroid/hardware/input/PhysicalKeyLayout;->getKeys()[[Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyLayout:Landroid/hardware/input/PhysicalKeyLayout;

    invoke-virtual {v2}, Landroid/hardware/input/PhysicalKeyLayout;->getEnterKey()Landroid/hardware/input/PhysicalKeyLayout$EnterKey;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v5}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetKeyboardPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)I

    move-result v5

    iget-object v6, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v6}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetKeyPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)I

    move-result v6

    iget-object v7, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v7}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetKeyRadius(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v7

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyboardBackground:Landroid/graphics/RectF;

    int-to-float v9, v3

    int-to-float v10, v4

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v11, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    mul-int/lit8 v8, v5, 0x2

    sub-int/2addr v3, v8

    mul-int/lit8 v8, v5, 0x2

    sub-int/2addr v4, v8

    if-lez v3, :cond_a

    if-gtz v4, :cond_1

    move-object/from16 v17, v1

    move/from16 v29, v3

    move/from16 v33, v4

    move/from16 v24, v5

    goto/16 :goto_5

    :cond_1
    array-length v15, v1

    mul-int/lit8 v8, v15, 0x2

    mul-int/2addr v8, v6

    sub-int v8, v4, v8

    int-to-float v8, v8

    int-to-float v9, v15

    div-float v14, v8, v9

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8, v14}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mcalculateBestTextSizeForKey(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;F)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v13, v11

    :goto_0
    if-ge v13, v15, :cond_8

    aget-object v12, v1, v13

    const/4 v11, 0x0

    move/from16 v16, v9

    array-length v9, v12

    move-object/from16 v17, v1

    array-length v1, v12

    const/16 v18, 0x0

    move/from16 v37, v18

    move/from16 v18, v11

    move/from16 v11, v37

    :goto_1
    if-ge v11, v1, :cond_2

    aget-object v19, v12, v11

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight()F

    move-result v20

    add-float v18, v18, v20

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v9, 0x2

    mul-int/2addr v1, v6

    sub-int v1, v3, v1

    int-to-float v1, v1

    div-float v1, v1, v18

    const/4 v11, 0x0

    mul-int/lit8 v19, v13, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int v19, v19, v6

    move/from16 v20, v11

    add-int v11, v5, v19

    int-to-float v11, v11

    move/from16 v19, v15

    int-to-float v15, v13

    mul-float/2addr v15, v14

    add-float/2addr v15, v11

    const/4 v11, 0x0

    move/from16 v22, v10

    move/from16 v21, v16

    move/from16 v37, v20

    move/from16 v20, v8

    move/from16 v8, v37

    :goto_2
    if-ge v11, v9, :cond_7

    mul-int/lit8 v10, v11, 0x2

    add-int/lit8 v10, v10, 0x1

    mul-int/2addr v10, v6

    add-int/2addr v10, v5

    int-to-float v10, v10

    mul-float v16, v8, v1

    add-float v10, v10, v16

    aget-object v16, v12, v11

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight()F

    move-result v16

    add-float v23, v8, v16

    new-instance v8, Landroid/graphics/RectF;

    aget-object v16, v12, v11

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight()F

    move-result v16

    mul-float v16, v16, v1

    move/from16 v24, v5

    add-float v5, v10, v16

    move/from16 v25, v9

    add-float v9, v15, v14

    invoke-direct {v8, v10, v15, v5, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v5, v8

    if-eqz v2, :cond_4

    aget-object v8, v12, v11

    invoke-virtual {v8}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode()I

    move-result v8

    const/16 v9, 0x42

    if-ne v8, v9, :cond_4

    invoke-virtual {v2}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->row()I

    move-result v8

    if-ne v8, v13, :cond_3

    invoke-virtual {v2}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->column()I

    move-result v8

    if-ne v8, v11, :cond_3

    iget v8, v5, Landroid/graphics/RectF;->left:F

    iget v9, v5, Landroid/graphics/RectF;->top:F

    move/from16 v22, v1

    move/from16 v26, v1

    move/from16 v29, v3

    move/from16 v33, v4

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v34, v11

    move-object/from16 v35, v12

    move v1, v13

    move/from16 v36, v14

    move/from16 v27, v15

    goto/16 :goto_3

    :cond_3
    move/from16 v26, v1

    move/from16 v29, v3

    move/from16 v33, v4

    move/from16 v34, v11

    move-object/from16 v35, v12

    move v1, v13

    move/from16 v36, v14

    move/from16 v27, v15

    goto/16 :goto_3

    :cond_4
    aget-object v8, v12, v11

    invoke-static {v8}, Landroid/hardware/input/PhysicalKeyLayout;->isSpecialKey(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v9, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    new-instance v8, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;

    move/from16 v26, v1

    iget-object v1, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTextPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v1

    move-object/from16 v16, v8

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v27

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v28

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v32, v16

    move-object/from16 v8, v32

    move/from16 v33, v4

    move-object v4, v9

    move-object/from16 v9, v31

    move/from16 v31, v10

    move-object v10, v5

    move/from16 v34, v11

    move v11, v7

    move-object/from16 v35, v12

    move v12, v1

    move v1, v13

    move-object/from16 v13, v27

    move/from16 v36, v14

    move-object/from16 v14, v28

    move/from16 v27, v15

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    invoke-direct/range {v8 .. v16}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey-IA;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v29, v3

    goto/16 :goto_3

    :cond_5
    move/from16 v26, v1

    move/from16 v33, v4

    move/from16 v31, v10

    move/from16 v34, v11

    move-object/from16 v35, v12

    move v1, v13

    move/from16 v36, v14

    move/from16 v27, v15

    aget-object v4, v35, v34

    invoke-static {v4}, Landroid/hardware/input/PhysicalKeyLayout;->isKeyPositionUnsure(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    new-instance v15, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey;

    aget-object v8, v35, v34

    invoke-virtual {v8}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph()Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    move-result-object v9

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTextPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v12

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTypingKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v13

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetPrimaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v14

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSecondaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v16

    const/16 v28, 0x0

    move-object v8, v15

    move-object v10, v5

    move v11, v7

    move/from16 v29, v3

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v28

    invoke-direct/range {v8 .. v16}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable$UnsureTypingKey-IA;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move/from16 v29, v3

    iget-object v3, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    new-instance v4, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;

    aget-object v8, v35, v34

    invoke-virtual {v8}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph()Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    move-result-object v9

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTextPadding(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)F

    move-result v12

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetTypingKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v13

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetPrimaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v14

    iget-object v8, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v8}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSecondaryGlyphPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v15

    const/16 v16, 0x0

    move-object v8, v4

    move-object v10, v5

    move v11, v7

    invoke-direct/range {v8 .. v16}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey;-><init>(Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable$TypingKey-IA;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v11, v34, 0x1

    move v13, v1

    move/from16 v8, v23

    move/from16 v5, v24

    move/from16 v9, v25

    move/from16 v1, v26

    move/from16 v15, v27

    move/from16 v3, v29

    move/from16 v4, v33

    move-object/from16 v12, v35

    move/from16 v14, v36

    goto/16 :goto_2

    :cond_7
    move/from16 v26, v1

    move/from16 v29, v3

    move/from16 v33, v4

    move/from16 v24, v5

    move/from16 v25, v9

    move/from16 v34, v11

    move-object/from16 v35, v12

    move v1, v13

    move/from16 v36, v14

    move/from16 v27, v15

    add-int/lit8 v13, v1, 0x1

    move-object/from16 v1, v17

    move/from16 v15, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v22

    goto/16 :goto_0

    :cond_8
    move-object/from16 v17, v1

    move/from16 v29, v3

    move/from16 v33, v4

    move/from16 v24, v5

    move/from16 v16, v9

    move v1, v13

    move/from16 v36, v14

    move/from16 v19, v15

    if-eqz v2, :cond_9

    new-instance v1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    iget-object v3, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mResourceProvider:Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;

    invoke-static {v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;->-$$Nest$mgetSpecialKeyPaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$ResourceProvider;)Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v7, v3, v4}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;-><init>(FLandroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder-IA;)V

    invoke-virtual {v2}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->topKeyWeight()F

    move-result v3

    mul-float/2addr v3, v10

    invoke-static {v1, v3}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetTopWidth(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object v3

    move/from16 v9, v16

    invoke-static {v3, v8, v9}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetStartPoint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object v3

    int-to-float v4, v6

    move/from16 v5, v36

    add-float v14, v5, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v14, v4

    invoke-static {v3, v5, v14}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetVerticalEdges(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/input/PhysicalKeyLayout$EnterKey;->bottomKeyWeight()F

    move-result v4

    mul-float/2addr v4, v10

    invoke-static {v3, v4}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$msetBottomWidth(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    iget-object v3, v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable;->mKeyDrawables:Ljava/util/List;

    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->-$$Nest$mbuild(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move/from16 v9, v16

    move/from16 v5, v36

    :goto_4
    return-void

    :cond_a
    move-object/from16 v17, v1

    move/from16 v29, v3

    move/from16 v33, v4

    move/from16 v24, v5

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid width and height to draw layout preview, width = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, v29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", height = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v4, v33

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "KeyboardLayoutPreview"

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 0

    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
