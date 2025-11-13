.class public final Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsConfirmView:Z

.field public mLastAnimatedView:Landroid/view/View;

.field public final mTempViewModelList:Ljava/util/List;

.field public final mViewModelList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mIsConfirmView:Z

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    check-cast p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter$ViewHolder;

    new-instance v8, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentItemView;

    iget-object v9, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    iget-object v0, v9, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v3, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter$ViewHolder;->parent:Landroid/view/ViewGroup;

    iget-boolean v4, v9, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsIconOnly:Z

    iget-boolean v5, v9, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsWhiteTheme:Z

    iget-boolean v6, v9, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsCameraViewCover:Z

    iget-object v7, v9, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;ZZZLcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter$ViewHolder;->view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mIsConfirmView:Z

    invoke-virtual {v8, v0, v1}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentItemView;->setViewAttrs(Landroid/view/View;Z)V

    iget-object v0, v8, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewIndex(I)V

    iget-object v0, v9, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getStateLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "confirm_dismiss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, v9, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter$ViewHolder;->view:Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mLastAnimatedView:Landroid/view/View;

    iget-object p0, v9, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mLastAnimatedView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter$ViewHolder;->$r8$clinit:I

    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_LARGE_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter$ViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter$ViewHolder;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-object v0
.end method
