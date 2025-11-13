.class Landroid/text/Layout$1;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Landroid/text/Layout$CharacterBoundsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/Layout;->drawHighContrastBackground(Landroid/graphics/Canvas;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mLastColor:I

.field blacklist mLastLineNum:I

.field final blacklist mLineBackground:Landroid/graphics/RectF;

.field final synthetic blacklist this$0:Landroid/text/Layout;

.field final synthetic blacklist val$bgPaint:Landroid/graphics/Paint;

.field final synthetic blacklist val$canvas:Landroid/graphics/Canvas;

.field final synthetic blacklist val$originalTextColor:I

.field final synthetic blacklist val$padding:F


# direct methods
.method constructor blacklist <init>(Landroid/text/Layout;ILandroid/graphics/Paint;FLandroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    iput p2, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    iput-object p3, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    iput p4, p0, Landroid/text/Layout$1;->val$padding:F

    iput-object p5, p0, Landroid/text/Layout$1;->val$canvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Landroid/text/Layout$1;->mLastLineNum:I

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iget p2, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    iput p2, p0, Landroid/text/Layout$1;->mLastColor:I

    return-void
.end method

.method private blacklist determineContrastingBackgroundColor(I)I
    .locals 3

    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpannedText(Landroid/text/Layout;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/SpanColors;->getColorAt(I)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    :cond_1
    iget v1, p0, Landroid/text/Layout$1;->mLastColor:I

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iput v0, p0, Landroid/text/Layout$1;->mLastColor:I

    iget-object v2, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v2, v0}, Landroid/text/Layout;->-$$Nest$misHighContrastTextDark(Landroid/text/Layout;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    goto :goto_1

    :cond_3
    const/high16 v2, -0x1000000

    :goto_1
    return v2

    :cond_4
    iget-object v2, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    return v2

    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method private blacklist drawRect()V
    .locals 3

    iget-object v0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iget v1, p0, Landroid/text/Layout$1;->val$padding:F

    neg-float v1, v1

    iget v2, p0, Landroid/text/Layout$1;->val$padding:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Landroid/text/Layout$1;->val$canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist onCharacterBounds(IIFFFF)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/text/Layout$1;->determineContrastingBackgroundColor(I)I

    move-result v0

    iget-object v1, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/text/Layout$1;->mLastLineNum:I

    if-ne p2, v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v2, p3, p4, p5, p6}, Landroid/graphics/RectF;->union(FFFF)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/text/Layout$1;->drawRect()V

    iget-object v2, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v2, p3, p4, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    iput p2, p0, Landroid/text/Layout$1;->mLastLineNum:I

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public blacklist onEnd()V
    .locals 0

    invoke-direct {p0}, Landroid/text/Layout$1;->drawRect()V

    return-void
.end method
