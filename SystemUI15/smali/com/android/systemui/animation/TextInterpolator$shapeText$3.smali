.class public final Lcom/android/systemui/animation/TextInterpolator$shapeText$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/text/TextShaper$GlyphsConsumer;


# instance fields
.field public final synthetic $runs:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/text/PositionedGlyphs;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/TextInterpolator$shapeText$3;->$runs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(IILandroid/graphics/text/PositionedGlyphs;Landroid/text/TextPaint;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/TextInterpolator$shapeText$3;->$runs:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
