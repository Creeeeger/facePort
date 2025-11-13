.class public final Landroidx/picker/adapter/viewholder/GridRemoveViewHolder;
.super Landroidx/picker/adapter/viewholder/GridViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final removeIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/GridViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a09b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GridRemoveViewHolder;->removeIcon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/picker/adapter/viewholder/GridViewHolder;->bindData(Landroidx/picker/model/viewdata/ViewData;)V

    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GridRemoveViewHolder;->removeIcon:Landroid/widget/ImageView;

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f080d81

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->gridItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/picker/adapter/viewholder/PickerViewHolder;->item:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final setViewEnableState(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/PickerViewHolder;->item:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
