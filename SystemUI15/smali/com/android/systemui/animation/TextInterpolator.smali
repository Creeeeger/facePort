.class public final Lcom/android/systemui/animation/TextInterpolator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final basePaint:Landroid/text/TextPaint;

.field public final fontInterpolator:Lcom/android/systemui/animation/FontInterpolator;

.field public glyphFilter:Lkotlin/jvm/functions/Function2;

.field public layout:Landroid/text/Layout;

.field public lines:Ljava/util/List;

.field public progress:F

.field public final targetPaint:Landroid/text/TextPaint;

.field public final tmpGlyph$delegate:Lkotlin/Lazy;

.field public final tmpPaint:Landroid/text/TextPaint;

.field public final tmpPaintForGlyph$delegate:Lkotlin/Lazy;

.field public tmpPositionArray:[F

.field public final typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCache;


# direct methods
.method public constructor <init>(Landroid/text/Layout;Lcom/android/systemui/animation/TypefaceVariantCache;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCache;

    new-instance p2, Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    new-instance p2, Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/animation/FontInterpolator;

    invoke-direct {p2, p3}, Lcom/android/systemui/animation/FontInterpolator;-><init>(Ljava/lang/Integer;)V

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->fontInterpolator:Lcom/android/systemui/animation/FontInterpolator;

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaint:Landroid/text/TextPaint;

    sget-object p2, Lcom/android/systemui/animation/TextInterpolator$tmpPaintForGlyph$2;->INSTANCE:Lcom/android/systemui/animation/TextInterpolator$tmpPaintForGlyph$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaintForGlyph$delegate:Lkotlin/Lazy;

    sget-object p2, Lcom/android/systemui/animation/TextInterpolator$tmpGlyph$2;->INSTANCE:Lcom/android/systemui/animation/TextInterpolator$tmpGlyph$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpGlyph$delegate:Lkotlin/Lazy;

    const/16 p2, 0x14

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    iput-object p1, p0, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/text/Layout;Lcom/android/systemui/animation/TypefaceVariantCache;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/TextInterpolator;-><init>(Landroid/text/Layout;Lcom/android/systemui/animation/TypefaceVariantCache;Ljava/lang/Integer;)V

    return-void
.end method

.method public static lerp(Landroid/graphics/Paint;Landroid/graphics/Paint;FLandroid/graphics/Paint;)V
    .locals 2

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public static shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    sub-int v3, v10, v9

    add-int v4, v9, v3

    add-int/lit8 v4, v4, -0x1

    if-le v4, v9, :cond_0

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    move v5, v3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Landroid/text/Layout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v6

    new-instance v8, Lcom/android/systemui/animation/TextInterpolator$shapeText$3;

    invoke-direct {v8, v11}, Lcom/android/systemui/animation/TextInterpolator$shapeText$3;-><init>(Ljava/util/List;)V

    move v4, v9

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Landroid/text/TextShaper;->shapeText(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;Landroid/text/TextShaper$GlyphsConsumer;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final drawFontRun(Landroid/graphics/Canvas;Lcom/android/systemui/animation/TextInterpolator$Run;Lcom/android/systemui/animation/TextInterpolator$FontRun;ILandroid/graphics/Paint;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    iget-object v4, v2, Lcom/android/systemui/animation/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    iget v5, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    iget-object v6, v0, Lcom/android/systemui/animation/TextInterpolator;->fontInterpolator:Lcom/android/systemui/animation/FontInterpolator;

    invoke-virtual {v6, v3, v4, v5}, Lcom/android/systemui/animation/FontInterpolator;->lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/animation/TextInterpolator;->glyphFilter:Lkotlin/jvm/functions/Function2;

    iget-object v5, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->targetY:[F

    iget-object v6, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->baseY:[F

    iget-object v15, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->targetX:[F

    iget-object v14, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->baseX:[F

    const/16 v16, 0x0

    iget v7, v2, Lcom/android/systemui/animation/TextInterpolator$FontRun;->start:I

    iget v13, v2, Lcom/android/systemui/animation/TextInterpolator$FontRun;->end:I

    if-nez v4, :cond_1

    :goto_0
    if-ge v7, v13, :cond_0

    iget-object v4, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    add-int/lit8 v8, v16, 0x1

    aget v9, v14, v7

    aget v10, v15, v7

    iget v11, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    aput v9, v4, v16

    iget-object v4, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    add-int/lit8 v16, v16, 0x2

    aget v9, v6, v7

    aget v10, v5, v7

    iget v11, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    aput v9, v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    iget v9, v2, Lcom/android/systemui/animation/TextInterpolator$FontRun;->start:I

    sub-int v12, v13, v9

    const/4 v11, 0x0

    iget-object v8, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    move-object/from16 v7, p1

    move-object v13, v3

    move-object/from16 v14, p5

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v2

    move/from16 v8, p4

    iput v8, v2, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->lineNo:I

    iget-object v2, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaintForGlyph$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/TextPaint;

    move-object/from16 v12, p5

    invoke-virtual {v8, v12}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    move v9, v7

    move v11, v9

    move/from16 v7, v16

    :goto_1
    if-ge v11, v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v8

    iput v11, v8, Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;->glyphIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v8

    iget-object v10, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    aget v10, v10, v11

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v8

    aget v10, v14, v11

    move/from16 p3, v7

    aget v7, v15, v11

    iget v12, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    invoke-static {v10, v7, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v7

    iput v7, v8, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v7

    aget v8, v6, v11

    aget v10, v5, v11

    iget v12, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    invoke-static {v8, v10, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v8

    iput v8, v7, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->y:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    iput v8, v7, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->textSize:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    iput v8, v7, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->color:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v7

    iget v8, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->textSize:F

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    cmpg-float v7, v7, v8

    if-nez v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->color:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    if-eq v7, v8, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v7, p3

    move/from16 v19, v11

    move/from16 v18, v13

    move-object/from16 v20, v14

    goto :goto_3

    :cond_3
    :goto_2
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v8

    iget v8, v8, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->textSize:F

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v8

    iget v8, v8, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->color:I

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v10, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    sub-int v12, v11, v9

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Landroid/text/TextPaint;

    iget-object v8, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    const/16 v18, 0x0

    move-object/from16 v7, p1

    move/from16 v19, v11

    move/from16 v11, v18

    move/from16 v18, v13

    move-object v13, v3

    move-object/from16 v20, v14

    move-object/from16 v14, v17

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    move/from16 v7, v16

    move/from16 v9, v19

    :goto_3
    iget-object v8, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    add-int/lit8 v10, v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v11

    iget v11, v11, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->x:F

    aput v11, v8, v7

    iget-object v8, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    add-int/lit8 v7, v7, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    move-result-object v11

    iget v11, v11, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->y:F

    aput v11, v8, v10

    add-int/lit8 v11, v19, 0x1

    move-object/from16 v12, p5

    move/from16 v13, v18

    move-object/from16 v14, v20

    goto/16 :goto_1

    :cond_4
    move/from16 v18, v13

    iget-object v10, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    sub-int v12, v18, v9

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/text/TextPaint;

    const/4 v11, 0x0

    iget-object v8, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    move-object/from16 v7, p1

    move-object v13, v3

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpGlyph$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    return-object p0
.end method

.method public final rebase()V
    .locals 10

    iget v0, p0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaint:Landroid/text/TextPaint;

    invoke-static {v2, v3, v0, v4}, Lcom/android/systemui/animation/TextInterpolator;->lerp(Landroid/graphics/Paint;Landroid/graphics/Paint;FLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/animation/TextInterpolator$Line;

    iget-object v2, v2, Lcom/android/systemui/animation/TextInterpolator$Line;->runs:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/animation/TextInterpolator$Run;

    iget-object v4, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->baseX:[F

    array-length v4, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    iget-object v6, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->baseX:[F

    aget v7, v6, v5

    iget-object v8, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->targetX:[F

    aget v8, v8, v5

    iget v9, p0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    invoke-static {v7, v8, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v7

    aput v7, v6, v5

    iget-object v6, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->baseY:[F

    aget v7, v6, v5

    iget-object v8, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->targetY:[F

    aget v8, v8, v5

    iget v9, p0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    invoke-static {v7, v8, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/animation/TextInterpolator$FontRun;

    iget-object v5, v4, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    iget-object v6, v4, Lcom/android/systemui/animation/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    iget v7, p0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    iget-object v8, p0, Lcom/android/systemui/animation/TextInterpolator;->fontInterpolator:Lcom/android/systemui/animation/FontInterpolator;

    invoke-virtual {v8, v5, v6, v7}, Lcom/android/systemui/animation/FontInterpolator;->lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v5}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/android/systemui/animation/TextInterpolator;->typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCache;

    check-cast v6, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;

    invoke-virtual {v6, v4}, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;->getTypefaceForVariant(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    :cond_5
    iput v1, p0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    return-void
.end method

.method public final shapeText(Landroid/text/Layout;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    move-result-object v1

    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v5, v7, :cond_11

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    check-cast v8, Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-static {v9, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-direct {v12, v8}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/text/PositionedGlyphs;

    check-cast v8, Landroid/graphics/text/PositionedGlyphs;

    invoke-virtual {v8}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v14

    if-ne v13, v14, :cond_d

    invoke-virtual {v8}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v13

    new-array v15, v13, [I

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_1

    invoke-virtual {v8, v14}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v7

    invoke-virtual {v9, v14}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v1

    if-ne v7, v1, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput v7, v15, v14

    add-int/2addr v14, v2

    const/16 v7, 0xa

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Inconsistent glyph ID at "

    const-string v2, " in line "

    invoke-static {v14, v0, v1, v2}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-array v1, v13, [F

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v13, :cond_2

    invoke-virtual {v8, v7}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v14

    aput v14, v1, v7

    add-int/2addr v7, v2

    goto :goto_3

    :cond_2
    new-array v7, v13, [F

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_3

    invoke-virtual {v8, v14}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v16

    aput v16, v7, v14

    add-int/2addr v14, v2

    goto :goto_4

    :cond_3
    new-array v14, v13, [F

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v13, :cond_4

    invoke-virtual {v9, v2}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v16

    aput v16, v14, v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    const/16 v16, 0x1

    new-array v2, v13, [F

    move/from16 v17, v3

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v13, :cond_5

    invoke-virtual {v9, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v18

    aput v18, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    if-eqz v13, :cond_c

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v5

    move-object/from16 v23, v10

    invoke-virtual {v9, v4}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v10

    sget-object v16, Lcom/android/systemui/animation/FontInterpolator;->Companion:Lcom/android/systemui/animation/FontInterpolator$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v10}, Lcom/android/systemui/animation/FontInterpolator$Companion;->canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z

    move-result v16

    const-string v4, ")"

    move-object/from16 v24, v11

    const-string v11, " vs "

    if-eqz v16, :cond_b

    move-object/from16 v25, v6

    move-object/from16 v16, v14

    const/4 v0, 0x0

    const/4 v6, 0x1

    move-object v14, v10

    move-object v10, v5

    move/from16 v5, v17

    :goto_7
    if-ge v6, v13, :cond_a

    move-object/from16 v26, v12

    invoke-virtual {v8, v6}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v12

    move-object/from16 v18, v8

    invoke-virtual {v9, v6}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v8

    if-eq v10, v12, :cond_8

    if-eq v14, v8, :cond_7

    move-object/from16 v19, v9

    new-instance v9, Lcom/android/systemui/animation/TextInterpolator$FontRun;

    invoke-direct {v9, v0, v6, v10, v14}, Lcom/android/systemui/animation/TextInterpolator$FontRun;-><init>(IILandroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v0, v6, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v5, Lcom/android/systemui/animation/FontInterpolator;->Companion:Lcom/android/systemui/animation/FontInterpolator$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v8}, Lcom/android/systemui/animation/FontInterpolator$Companion;->canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v0

    move v0, v6

    move-object v14, v8

    move-object v10, v12

    :goto_8
    const/4 v8, 0x1

    goto :goto_9

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot interpolate font at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "Base font has changed at "

    const-string v1, " but target font is unchanged."

    invoke-static {v6, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-object/from16 v19, v9

    if-ne v14, v8, :cond_9

    goto :goto_8

    :goto_9
    add-int/2addr v6, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v12, v26

    goto :goto_7

    :cond_9
    const-string v0, "Base font is unchanged at "

    const-string v1, " but target font has changed."

    invoke-static {v6, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object/from16 v26, v12

    const/4 v8, 0x1

    new-instance v4, Lcom/android/systemui/animation/TextInterpolator$FontRun;

    invoke-direct {v4, v0, v13, v10, v14}, Lcom/android/systemui/animation/TextInterpolator$FontRun;-><init>(IILandroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int/2addr v13, v0

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_a

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot interpolate font at 0 ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object/from16 v25, v6

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v26, v12

    move-object/from16 v16, v14

    const/4 v8, 0x1

    move/from16 v0, v17

    :goto_a
    new-instance v4, Lcom/android/systemui/animation/TextInterpolator$Run;

    move-object/from16 v5, v16

    move-object v14, v4

    move-object/from16 v16, v1

    move-object/from16 v17, v7

    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v14 .. v20}, Lcom/android/systemui/animation/TextInterpolator$Run;-><init>([I[F[F[F[FLjava/util/List;)V

    move-object/from16 v1, v26

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v0

    move-object v12, v1

    move v2, v8

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v6, v25

    const/16 v7, 0xa

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_d
    iget-object v0, v0, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Inconsistent glyph count at line "

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move v8, v2

    move/from16 v17, v3

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object v1, v12

    new-instance v2, Lcom/android/systemui/animation/TextInterpolator$Line;

    invoke-direct {v2, v1}, Lcom/android/systemui/animation/TextInterpolator$Line;-><init>(Ljava/util/List;)V

    move-object/from16 v1, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v1

    move v2, v8

    move/from16 v3, v17

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    const/16 v7, 0xa

    goto/16 :goto_0

    :cond_f
    move-object v1, v6

    iput-object v1, v0, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    iget-object v1, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    array-length v1, v1

    mul-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_10

    new-array v1, v3, [F

    iput-object v1, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    :cond_10
    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new layout result has different line count."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final updatePositionsAndFonts(Ljava/util/List;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_b

    iget-object v0, v0, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    check-cast v0, Lcom/android/systemui/animation/TextInterpolator$Line;

    iget-object v0, v0, Lcom/android/systemui/animation/TextInterpolator$Line;->runs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/text/PositionedGlyphs;

    check-cast v0, Lcom/android/systemui/animation/TextInterpolator$Run;

    invoke-virtual {v1}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    array-length v10, v10

    if-ne v9, v10, :cond_8

    iget-object v9, v0, Lcom/android/systemui/animation/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/animation/TextInterpolator$FontRun;

    iget v11, v10, Lcom/android/systemui/animation/TextInterpolator$FontRun;->start:I

    invoke-virtual {v1, v11}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v11

    iget v12, v10, Lcom/android/systemui/animation/TextInterpolator$FontRun;->start:I

    move v13, v12

    :goto_3
    iget v14, v10, Lcom/android/systemui/animation/TextInterpolator$FontRun;->end:I

    if-ge v13, v14, :cond_2

    invoke-virtual {v1, v12}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v14

    iget-object v15, v0, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    aget v15, v15, v12

    if-ne v14, v15, :cond_1

    invoke-virtual {v1, v13}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v14

    if-ne v11, v14, :cond_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_0
    invoke-virtual {v1, v13}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The new layout has different font run. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "The new layout has different glyph ID at "

    invoke-static {v12, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    sget-object v12, Lcom/android/systemui/animation/FontInterpolator;->Companion:Lcom/android/systemui/animation/FontInterpolator$Companion;

    iget-object v13, v10, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v13}, Lcom/android/systemui/animation/FontInterpolator$Companion;->canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz p2, :cond_3

    iput-object v11, v10, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    goto :goto_2

    :cond_3
    iput-object v11, v10, Lcom/android/systemui/animation/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    goto :goto_2

    :cond_4
    iget-object v0, v10, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New font cannot be interpolated with existing font. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/systemui/animation/TextInterpolator$Run;->baseX:[F

    if-eqz p2, :cond_6

    array-length v11, v10

    :goto_4
    if-ge v9, v11, :cond_7

    invoke-virtual {v1, v9}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v12

    aput v12, v10, v9

    invoke-virtual {v1, v9}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v12

    iget-object v13, v0, Lcom/android/systemui/animation/TextInterpolator$Run;->baseY:[F

    aput v12, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    array-length v10, v10

    :goto_5
    if-ge v9, v10, :cond_7

    invoke-virtual {v1, v9}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/animation/TextInterpolator$Run;->targetX:[F

    aput v11, v12, v9

    invoke-virtual {v1, v9}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/animation/TextInterpolator$Run;->targetY:[F

    aput v11, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new layout has different glyph count."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The new layout result has different line count."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
