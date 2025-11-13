.class public final Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mCategory:I

.field public final mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

.field public final mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$Parent;

.field public final mTouchInsetSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/complication/ComplicationLayoutParams;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;ILcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$Parent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    iput-object p2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    iput-object p3, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mTouchInsetSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iput p4, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mCategory:I

    iput-object p5, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$Parent;

    iget-object p0, p3, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;

    const/4 p4, 0x1

    invoke-direct {p2, p3, p1, p4}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;Landroid/view/View;I)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;)I
    .locals 4

    iget v0, p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mCategory:I

    iget v1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mCategory:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-ne v1, p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    iget p1, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mWeight:I

    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    iget p0, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mWeight:I

    if-eq p1, p0, :cond_3

    if-le p0, p1, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->compareTo(Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;)I

    move-result p0

    return p0
.end method
