.class public final Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mColIndex:I

.field public final mData:Landroidx/leanback/widget/picker/PickerColumn;

.field public final mResource:I

.field public final mTextViewResourceId:I

.field public final synthetic this$0:Landroidx/leanback/widget/picker/Picker;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/picker/Picker;III)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->this$0:Landroidx/leanback/widget/picker/Picker;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput p2, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mResource:I

    iput p4, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mColIndex:I

    iput p3, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mTextViewResourceId:I

    iget-object p1, p1, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/picker/PickerColumn;

    iput-object p1, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroidx/leanback/widget/picker/PickerColumn;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroidx/leanback/widget/picker/PickerColumn;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    iget p0, p0, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    sub-int/2addr v0, p0

    add-int/lit8 p0, v0, 0x1

    :goto_0
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    check-cast p1, Landroidx/leanback/widget/picker/Picker$ViewHolder;

    iget-object v0, p1, Landroidx/leanback/widget/picker/Picker$ViewHolder;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroidx/leanback/widget/picker/PickerColumn;

    if-eqz v1, :cond_1

    iget v2, v1, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    add-int/2addr v2, p2

    iget-object v3, v1, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    iget-object v1, v1, Landroidx/leanback/widget/picker/PickerColumn;->mLabelFormat:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    aget-object v1, v3, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->this$0:Landroidx/leanback/widget/picker/Picker;

    iget-object v1, v0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    iget p0, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mColIndex:I

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/VerticalGridView;

    iget-object v1, v1, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, 0x0

    if-ne v1, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    invoke-virtual {v0, p1, p2, p0, v2}, Landroidx/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZIZ)V

    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mResource:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget p0, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mTextViewResourceId:I

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object p0, p1

    check-cast p0, Landroid/widget/TextView;

    :goto_0
    new-instance p2, Landroidx/leanback/widget/picker/Picker$ViewHolder;

    invoke-direct {p2, p1, p0}, Landroidx/leanback/widget/picker/Picker$ViewHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    return-object p2
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Landroidx/leanback/widget/picker/Picker$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->this$0:Landroidx/leanback/widget/picker/Picker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method
