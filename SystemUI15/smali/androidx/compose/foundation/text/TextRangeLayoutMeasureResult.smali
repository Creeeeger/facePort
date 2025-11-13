.class public final Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final height:I

.field public final place:Lkotlin/jvm/functions/Function0;

.field public final width:I


# direct methods
.method public constructor <init>(IILkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->width:I

    iput p2, p0, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->height:I

    iput-object p3, p0, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->place:Lkotlin/jvm/functions/Function0;

    return-void
.end method
