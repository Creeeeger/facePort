.class public final Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mLastAnimatedView:Landroid/view/View;

.field public final mTempViewModelList:Ljava/util/List;

.field public final mViewModelList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mTempViewModelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    new-instance p2, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;ZZ)V

    invoke-virtual {p2}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->inflateView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->setViewAttrs(Landroid/view/View;)V

    iget-object p2, p2, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewIndex(I)V

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object p2, p2, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getStateLabel()Ljava/lang/String;

    move-result-object p2

    const-string v0, "confirm_dismiss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object p2, p2, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mLastAnimatedView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mLastAnimatedView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p3
.end method
