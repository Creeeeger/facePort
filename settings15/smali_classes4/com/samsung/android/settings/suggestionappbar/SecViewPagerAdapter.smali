.class public final Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final data:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;->data:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter$ViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;->data:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;

    iget-object p1, p1, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter$ViewHolder;->appBarModuleView:Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->init(Lcom/google/android/material/appbar/model/view/SuggestAppBarView;)Lcom/google/android/material/appbar/model/view/SuggestAppBarView;

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;

    iget-object p0, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter;->context:Landroid/content/Context;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0, p2}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p0, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAdapter$ViewHolder;-><init>(Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;)V

    return-object p0
.end method
