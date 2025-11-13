.class public final Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSliceView:Landroidx/slice/widget/SliceView;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumePanelSlicesAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanelSlicesAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/systemui/volume/VolumePanelSlicesAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0b7a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/slice/widget/SliceView;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;->mSliceView:Landroidx/slice/widget/SliceView;

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Landroidx/slice/widget/SliceView;->setMode(I)V

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    iget-object v1, p2, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_0

    iput-boolean v0, v1, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanelSlicesAdapter;->mOnSliceActionListener:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    iput-object p0, p2, Landroidx/slice/widget/SliceView;->mSliceObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    iget-object p1, p2, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1, p0}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;)V

    return-void
.end method
