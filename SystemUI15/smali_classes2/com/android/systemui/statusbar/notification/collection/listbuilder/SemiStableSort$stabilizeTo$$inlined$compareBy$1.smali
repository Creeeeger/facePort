.class public final Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$stabilizeTo$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $stableOrder$inlined:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$StableOrder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$StableOrder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$stabilizeTo$$inlined$compareBy$1;->$stableOrder$inlined:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$StableOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$stabilizeTo$$inlined$compareBy$1;->$stableOrder$inlined:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$StableOrder;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$stabilizeTo$$inlined$compareBy$1;->$stableOrder$inlined:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$StableOrder;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
