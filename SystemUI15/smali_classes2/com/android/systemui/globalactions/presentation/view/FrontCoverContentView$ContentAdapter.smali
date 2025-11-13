.class public final Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsConfirmView:Z

.field public mLastAnimatedView:Landroid/view/View;

.field public final mTempViewModelList:Ljava/util/List;

.field public final mViewModelList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mIsConfirmView:Z

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

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

    new-instance p2, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-boolean v4, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsIconOnly:Z

    iget-boolean v5, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    iget-object v6, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    move-object v0, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;ZZLcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    iget-object p3, p2, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iget-object v0, p2, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    iget-object v1, p2, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mParent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mIsConfirmView:Z

    invoke-virtual {p2, p3, v0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->setViewAttrs(Landroid/view/View;Z)V

    iget-object p2, p2, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewIndex(I)V

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object p2, p2, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getStateLabel()Ljava/lang/String;

    move-result-object p2

    const-string v0, "confirm_dismiss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object p2, p2, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mLastAnimatedView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mLastAnimatedView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p3
.end method
