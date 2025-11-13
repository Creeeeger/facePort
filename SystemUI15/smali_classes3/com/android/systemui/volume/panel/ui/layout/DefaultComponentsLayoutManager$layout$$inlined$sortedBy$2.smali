.class public final Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager$layout$$inlined$sortedBy$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager$layout$$inlined$sortedBy$2;->this$0:Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager$layout$$inlined$sortedBy$2;->this$0:Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;

    iget-object v0, v0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;->footerComponents:Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    iget-object p1, p1, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;->key:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->indexOf(Ljava/lang/Iterable;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager$layout$$inlined$sortedBy$2;->this$0:Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/ui/layout/DefaultComponentsLayoutManager;->footerComponents:Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    iget-object p2, p2, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;->key:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->indexOf(Ljava/lang/Iterable;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
