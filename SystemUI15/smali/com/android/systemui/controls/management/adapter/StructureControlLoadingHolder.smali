.class public final Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;
.super Lcom/android/systemui/controls/management/adapter/SecStructureViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final subtitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/SecStructureViewHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0c99

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;->subtitleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/StructureElementWrapper;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/model/LoadingWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlLoadingHolder;->subtitleView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/systemui/controls/management/model/LoadingWrapper;->subtitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
