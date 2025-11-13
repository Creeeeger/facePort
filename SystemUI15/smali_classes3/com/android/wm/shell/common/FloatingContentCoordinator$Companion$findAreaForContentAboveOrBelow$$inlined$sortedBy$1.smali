.class public final Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $findAbove$inlined:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;->$findAbove$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;->$findAbove$inlined:Z

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_0

    neg-int p1, p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Landroid/graphics/Rect;

    iget-boolean p0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;->$findAbove$inlined:Z

    if-eqz p0, :cond_1

    iget p0, p2, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    goto :goto_0

    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->top:I

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
