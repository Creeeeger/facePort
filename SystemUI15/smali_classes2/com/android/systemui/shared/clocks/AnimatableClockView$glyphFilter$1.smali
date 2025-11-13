.class final Lcom/android/systemui/shared/clocks/AnimatableClockView$glyphFilter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/clocks/AnimatableClockView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/AnimatableClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$glyphFilter$1;->this$0:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    iget p2, p1, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->lineNo:I

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->getGlyphIndex()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$glyphFilter$1;->this$0:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    iget-object p2, p2, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphOffsets:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_0

    iget p2, p1, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->x:F

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$glyphFilter$1;->this$0:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphOffsets:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    add-float/2addr p0, p2

    iput p0, p1, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->x:F

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
