.class public final Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$getActiveNonMinimizedTasksOrderedFrontToBack$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $allTasksInZOrder$inlined:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$getActiveNonMinimizedTasksOrderedFrontToBack$$inlined$sortedBy$1;->$allTasksInZOrder$inlined:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$getActiveNonMinimizedTasksOrderedFrontToBack$$inlined$sortedBy$1;->$allTasksInZOrder$inlined:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$getActiveNonMinimizedTasksOrderedFrontToBack$$inlined$sortedBy$1;->$allTasksInZOrder$inlined:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
