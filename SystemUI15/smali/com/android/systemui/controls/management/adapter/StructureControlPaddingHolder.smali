.class public final Lcom/android/systemui/controls/management/adapter/StructureControlPaddingHolder;
.super Lcom/android/systemui/controls/management/adapter/SecStructureViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final paddingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/SecStructureViewHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlPaddingHolder;->paddingView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/StructureElementWrapper;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlPaddingHolder;->paddingView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p1, p1, Lcom/android/systemui/controls/management/model/PaddingWrapper;->padding:I

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
