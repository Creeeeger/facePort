.class public Landroidx/apppickerview/widget/AppPickerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;


# static fields
.field public static mIsDividerVisible:Z


# instance fields
.field public mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

.field public final mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

.field public final mContext:Landroid/content/Context;

.field public mGridSpacingDecoration:Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;

.field public mIsCustomViewItemEnabled:Z

.field public mRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

.field public mSeparators:Ljava/util/ArrayList;

.field public final mSpanCount:I

.field public mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/apppickerview/widget/AppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/apppickerview/widget/AppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x4

    iput p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mSpanCount:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mIsCustomViewItemEnabled:Z

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V

    new-instance p2, Landroidx/apppickerview/widget/AppPickerIconLoader;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p2, Landroidx/apppickerview/widget/AppPickerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    return-void
.end method

.method public static getInstalledPackages(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final addCustomViewItem$1()V
    .locals 6

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mSeparators:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object v2, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    new-instance v3, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    const-string v4, "app_picker_custom_view_item"

    const-string v5, ""

    invoke-direct {v3, v4, v5, v5}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsCustomViewItem:Z

    const/4 v4, -0x1

    iput v4, v3, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mSpanCount:I

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    iget-object v3, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap$1()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Landroidx/apppickerview/widget/AppPickerView$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/apppickerview/widget/AppPickerView$1;-><init>(Landroidx/apppickerview/widget/AppPickerView;I)V

    iput-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    :cond_0
    return-void
.end method

.method public final addSeparator()V
    .locals 6

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mSeparators:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mSeparators:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object v2, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    new-instance v3, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    const-string v4, "app_picker_separator"

    const-string v5, ""

    invoke-direct {v3, v4, v5, v5}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, v3, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsSeparator:Z

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    iget-object v3, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap$1()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Landroidx/apppickerview/widget/AppPickerView$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/apppickerview/widget/AppPickerView$1;-><init>(Landroidx/apppickerview/widget/AppPickerView;I)V

    iput-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    :cond_0
    return-void
.end method

.method public final getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;
    .locals 0

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mActionButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    return-void
.end method

.method public final setAppPickerView(ILjava/util/List;I)V
    .locals 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/apppickerview/widget/AppPickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f040521

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-instance v1, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    iget-object v2, p0, Landroidx/apppickerview/widget/AppPickerView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/apppickerview/widget/AppPickerView;->mRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v1, p0, Landroidx/apppickerview/widget/AppPickerView;->mRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroidx/apppickerview/widget/AppPickerView;->getInstalledPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    :cond_1
    iput p1, p0, Landroidx/apppickerview/widget/AppPickerView;->mType:I

    iget-boolean v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mIsCustomViewItemEnabled:Z

    const/4 v1, 0x7

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/apppickerview/widget/AppPickerView;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    sget-object v4, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING:Landroidx/apppickerview/widget/AbsAdapter$1;

    if-lt p1, v1, :cond_2

    new-instance v4, Landroidx/apppickerview/widget/GridAdapter;

    invoke-direct {v4, v0, p1, p3, v2}, Landroidx/apppickerview/widget/AbsAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V

    goto :goto_0

    :cond_2
    new-instance v4, Landroidx/apppickerview/widget/ListAdapter;

    invoke-direct {v4, v0, p1, p3, v2}, Landroidx/apppickerview/widget/ListAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V

    :goto_0
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    const/4 p3, 0x0

    invoke-virtual {v4, p2, p3}, Landroidx/apppickerview/widget/AbsAdapter;->resetPackages(Ljava/util/List;Z)V

    iput-object v4, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    :cond_3
    iget p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mType:I

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mGridSpacingDecoration:Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;

    if-nez p2, :cond_4

    new-instance p2, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;

    iget p3, p0, Landroidx/apppickerview/widget/AppPickerView;->mSpanCount:I

    invoke-direct {p2, p0, p3}, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;-><init>(Landroidx/apppickerview/widget/AppPickerView;I)V

    iput-object p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mGridSpacingDecoration:Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    :pswitch_1
    new-instance p3, Landroidx/apppickerview/widget/AppPickerView$ListDividerItemDecoration;

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mContext:Landroid/content/Context;

    invoke-direct {p3, p0, v0, p2}, Landroidx/apppickerview/widget/AppPickerView$ListDividerItemDecoration;-><init>(Landroidx/apppickerview/widget/AppPickerView;Landroid/content/Context;I)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_4
    :goto_1
    if-eq p1, v1, :cond_5

    const/16 p2, 0x8

    if-eq p1, p2, :cond_5

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    goto :goto_2

    :cond_5
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget p2, p0, Landroidx/apppickerview/widget/AppPickerView;->mSpanCount:I

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView;->mSeparators:Ljava/util/ArrayList;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    if-eqz p0, :cond_0

    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOnBindListener:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

    :cond_0
    return-void
.end method

.method public final setSearchFilter(Ljava/lang/String;Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iput-object p2, v0, Landroidx/apppickerview/widget/AbsAdapter;->mOnSearchFilterListener:Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;

    :cond_0
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/apppickerview/widget/AbsAdapter$5;

    invoke-direct {p2, p0}, Landroidx/apppickerview/widget/AbsAdapter$5;-><init>(Landroidx/apppickerview/widget/AbsAdapter;)V

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method
