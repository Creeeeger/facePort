.class public final Lcom/android/systemui/complication/ComplicationLayoutEngine;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/complication/Complication$VisibilityController;


# instance fields
.field public final mEntries:Ljava/util/HashMap;

.field public final mFadeInDuration:I

.field public final mFadeOutDuration:I

.field public final mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mPositions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;IIIIILcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mEntries:Ljava/util/HashMap;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mPositions:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput p8, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mFadeInDuration:I

    iput p9, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mFadeOutDuration:I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2, p2, p2}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    new-instance p3, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    invoke-direct {p3, p2, p4, p2, p2}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    new-instance p4, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    invoke-direct {p4, p2, p2, p5, p2}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    new-instance p5, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    invoke-direct {p5, p2, p2, p2, p6}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    const/4 p2, 0x5

    const/16 p6, 0x8

    invoke-static {p0, p2, p6, p3}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    const/4 p7, 0x2

    invoke-static {p0, p2, p7, p1}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    const/4 p2, 0x6

    invoke-static {p0, p2, p6, p5}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    const/4 p6, 0x1

    invoke-static {p0, p2, p6, p1}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    const/16 p1, 0x9

    const/4 p2, 0x4

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    invoke-static {p0, p1, p7, p4}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    const/16 p1, 0xa

    invoke-static {p0, p1, p2, p5}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    invoke-static {p0, p1, p6, p4}, Lcom/android/systemui/complication/ComplicationLayoutEngine;->addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V

    return-void
.end method

.method public static addToMapping(Ljava/util/HashMap;IILcom/android/systemui/complication/ComplicationLayoutEngine$Margins;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
