.class public Landroidx/picker/widget/SeslAppPickerSelectLayout;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/common/log/LogTag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;,
        Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public curLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

.field public final mAppPickerStateContainerView:Landroid/widget/FrameLayout;

.field public final mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

.field public final mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

.field public mHeaderHeight:I

.field public mHeaderVisibility:Z

.field public mIsMainViewTitleCustomized:Z

.field public mIsSelectedViewEnabled:Z

.field public final mListItemHeight:I

.field public final mMainViewTitleView:Landroid/widget/TextView;

.field public final mOnSearchFilterListenerForLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout$1;

.field public mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

.field public final mPaddingHorizontal:I

.field public final mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mSearchNoResultFoundView:Landroid/view/View;

.field public final mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

.field public final mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

.field public final mSelectedViewHeader:Landroid/widget/FrameLayout;

.field public mSelectedViewHeight:I

.field public mSelectedViewTitleHeight:I

.field public final mSelectedViewTitleView:Landroid/widget/TextView;

.field public mShouldCheckHeaderVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "AppPickerSelectLayout Type is wrong ="

    invoke-direct/range {p0 .. p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v9, 0x0

    iput-boolean v9, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mIsSelectedViewEnabled:Z

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

    new-instance v4, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-direct {v4}, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;-><init>()V

    iput-object v4, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    iput-boolean v9, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mIsMainViewTitleCustomized:Z

    const/4 v10, 0x1

    iput-boolean v10, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mListItemHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mPaddingHorizontal:I

    new-instance v4, Landroidx/picker/widget/SeslAppPickerSelectLayout$1;

    invoke-direct {v4, v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout$1;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V

    iput-object v4, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mOnSearchFilterListenerForLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout$1;

    sget-object v4, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->AUTO:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    iput-object v4, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    iput-object v3, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->curLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    :try_start_0
    sget-object v4, Landroidx/picker/R$styleable;->SeslAppPickerSelectLayout:[I

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual {v2, v5, v4, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v9, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-static {}, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->values()[Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_0

    invoke-static {}, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->values()[Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    move-result-object v0

    aget-object v0, v0, v4

    iput-object v0, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/picker/common/log/LogTagHelperKt;->error(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    const-string v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f0d04f3

    invoke-virtual {v0, v3, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0cc3

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0da2

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewHeader:Landroid/widget/FrameLayout;

    new-instance v3, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v0, 0x7f0a011a

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateContainerView:Landroid/widget/FrameLayout;

    const v3, 0x7f0a0927

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mMainViewTitleView:Landroid/widget/TextView;

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    new-instance v12, Landroidx/core/view/ViewCompat$2;

    const v13, 0x7f0a0fbd

    const-class v14, Ljava/lang/Boolean;

    const/16 v15, 0x1c

    const/4 v8, 0x2

    move-object v3, v12

    move v4, v13

    move-object v5, v14

    move v6, v9

    move v7, v15

    invoke-direct/range {v3 .. v8}, Landroidx/core/view/ViewCompat$2;-><init>(ILjava/lang/Class;III)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v11, v8}, Landroidx/core/view/ViewCompat$2;->set(Landroid/view/View;Ljava/lang/Object;)V

    const v3, 0x7f0a0da7

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewTitleView:Landroid/widget/TextView;

    new-instance v12, Landroidx/core/view/ViewCompat$2;

    const/16 v16, 0x2

    move-object v3, v12

    move v4, v13

    move-object v5, v14

    move v6, v9

    move v7, v15

    move-object v13, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Landroidx/core/view/ViewCompat$2;-><init>(ILjava/lang/Class;III)V

    invoke-virtual {v12, v11, v13}, Landroidx/core/view/ViewCompat$2;->set(Landroid/view/View;Ljava/lang/Object;)V

    new-instance v3, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;

    invoke-direct {v3, v1, v10}, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v3, 0x7f0a0a8a

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSearchNoResultFoundView:Landroid/view/View;

    new-instance v4, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v2}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda3;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v3, 0x7f0a0da3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/picker/widget/SeslAppPickerGridView;

    iput-object v3, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    new-instance v4, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Landroidx/picker/widget/SeslAppPickerSelectLayout$2;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollBarStyle(I)V

    invoke-virtual {v3, v9}, Landroidx/picker/widget/SeslAppPickerView;->setAppListOrder(I)V

    iget-object v5, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-virtual {v5}, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->getList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    new-instance v5, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1, v2}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda4;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroidx/picker/widget/SeslAppPickerView;->setOnItemClickEventListener(Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->shouldCheckHeaderVisibility()Z

    move-result v3

    iput-boolean v3, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mShouldCheckHeaderVisibility:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateLayout$3()V

    new-instance v3, Landroidx/picker/widget/SeslAppPickerListView;

    invoke-direct {v3, v2}, Landroidx/picker/widget/SeslAppPickerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$1;

    invoke-direct {v0, v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout$1;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V

    iput-object v0, v3, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

    iget v0, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mPaddingHorizontal:I

    if-lez v0, :cond_2

    invoke-virtual {v3, v0, v9, v0, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillHorizontalPaddingEnabled(Z)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollBarStyle(I)V

    :cond_2
    return-void

    :goto_3
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw v0
.end method

.method public static convertCheckBox2Remove(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/AppInfoData;
    .locals 2

    new-instance v0, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    invoke-direct {v0, p0}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;-><init>(Landroidx/picker/model/AppInfoData;)V

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/picker/helper/DrawableHelperKt;->newMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    move-result-object v0

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getSubIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Landroidx/picker/helper/DrawableHelperKt;->newMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setSubIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object p0

    return-object p0
.end method

.method public static getCategoryAppDataContainsAppInfo(Ljava/util/List;Landroidx/picker/model/AppInfo;)Landroidx/picker/model/appdata/CategoryAppData;
    .locals 5

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/model/appdata/CategoryAppData;

    iget-object v2, v0, Landroidx/picker/model/appdata/CategoryAppData;->appInfoDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/picker/model/AppInfoData;

    invoke-interface {v3}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroidx/picker/model/AppInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    :cond_2
    if-eqz v1, :cond_0

    return-object v0

    :cond_3
    return-object v1
.end method

.method public static getCategoryAppDataList(Ljava/util/List;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/AppData;

    instance-of v2, v1, Landroidx/picker/model/appdata/GroupAppData;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/picker/model/appdata/GroupAppData;

    iget-object v1, v1, Landroidx/picker/model/appdata/GroupAppData;->appDataList:Ljava/util/List;

    const-class v2, Landroidx/picker/model/appdata/CategoryAppData;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroidx/picker/model/appdata/CategoryAppData;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/picker/model/appdata/CategoryAppData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final addCheckedItem(Landroidx/picker/model/AppInfoData;)V
    .locals 3

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    move-result v0

    const-string v1, " is already added"

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v0

    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/picker/common/log/LogTagHelperKt;->warn(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v0

    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/picker/common/log/LogTagHelperKt;->warn(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final addInternalSelectItems(Ljava/util/List;)V
    .locals 7

    iget-boolean v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mIsSelectedViewEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "list"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/picker/model/AppData;

    iget-object v4, v0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/picker/model/AppData;

    invoke-interface {v5}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v5

    invoke-interface {v3}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, v0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, v0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/picker/controller/ViewDataController;->setAppDataList(Ljava/util/List;)V

    :cond_4
    new-instance p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public final addSelectItem(Landroidx/picker/model/appdata/CategoryAppData;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->removeSelectItemInCategory(Landroidx/picker/model/appdata/CategoryAppData;)V

    new-instance v0, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    iget-object v1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfo:Landroidx/picker/model/AppInfo;

    invoke-direct {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    iget-object v1, p1, Landroidx/picker/model/appdata/CategoryAppData;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    move-result-object v0

    iget-object v1, p1, Landroidx/picker/model/appdata/CategoryAppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroidx/picker/helper/DrawableHelperKt;->newMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/picker/model/appdata/CategoryAppData;->getSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    filled-new-array {p1}, [Landroidx/picker/model/AppData;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addInternalSelectItems(Ljava/util/List;)V

    return-void
.end method

.method public final clearCheckedItemList()V
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/AppInfoData;

    invoke-interface {v1}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final enableSelectedAppPickerView(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mIsSelectedViewEnabled:Z

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    new-instance p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-class p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;

    const-string p0, "SeslAppPickerSelectLayout"

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->shouldCheckHeaderVisibility()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mShouldCheckHeaderVisibility:Z

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->AUTO:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateLayout$3()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewHeader:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    iget-boolean p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mIsSelectedViewEnabled:Z

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final refreshSelectedAppPickerView(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mIsSelectedViewEnabled:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    iget-object v4, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    iget-object v1, v1, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    add-int/2addr v1, v4

    if-lez v1, :cond_2

    iget-boolean v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iget-object v4, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v4, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-ne v0, v2, :cond_5

    if-eqz v1, :cond_4

    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->PORT_SELECTED:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    goto :goto_3

    :cond_4
    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->PORT:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->LAND_SELECTED:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->LAND_HEADER_ONLY:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    goto :goto_3

    :cond_7
    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->LAND:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    :goto_3
    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->curLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    if-eq v1, v0, :cond_9

    iput-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->curLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSearchNoResultFoundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$LayoutType;->layoutResId:I

    invoke-virtual {v2, v5, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSearchNoResultFoundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_8

    new-instance p1, Landroid/transition/ChangeBounds;

    invoke-direct {p1}, Landroid/transition/ChangeBounds;-><init>()V

    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$6;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    :cond_9
    :goto_4
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewHeader:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    const/16 v3, 0x8

    :goto_5
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final removeSelectItem(Landroidx/picker/model/AppInfoData;)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v1

    iget-object v2, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mIsSelectedViewEnabled:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/picker/model/AppData;

    invoke-interface {v2}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v2

    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/picker/model/AppData;

    if-eqz v1, :cond_4

    iget-object p1, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    iget-object v0, p0, Landroidx/picker/controller/ViewDataController;->order:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Landroidx/picker/controller/ViewDataController;->submit(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    return-void
.end method

.method public final removeSelectItemInCategory(Landroidx/picker/model/appdata/CategoryAppData;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfoDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/AppInfoData;

    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-interface {v1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->get(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/AppInfoData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-interface {v1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v3

    iget-object v4, v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v4, v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mIsSelectedViewEnabled:Z

    if-eqz p1, :cond_7

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/AppData;

    invoke-interface {v1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/picker/model/AppData;

    invoke-interface {v3}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    iget-object v0, p0, Landroidx/picker/controller/ViewDataController;->order:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Landroidx/picker/controller/ViewDataController;->submit(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7
    return-void
.end method

.method public final setStateAll(Z)V
    .locals 4

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mSelectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    iget-object p0, p0, Landroidx/picker/controller/ViewDataController;->currentList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "viewDataList"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/picker/model/viewdata/ViewData;

    instance-of v3, v3, Landroidx/picker/model/viewdata/AllAppsViewData;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Landroidx/picker/model/viewdata/AllAppsViewData;

    if-eqz v2, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v1, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v1}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/picker/features/observable/ObservableProperty;->setValueSilence$picker_app_release(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-object p1, v2, Landroidx/picker/model/viewdata/AllAppsViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    invoke-virtual {p1, p0}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroidx/picker/model/Selectable;

    if-eqz v3, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/Selectable;

    instance-of v2, v1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v2, :cond_a

    move-object v2, v1

    check-cast v2, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v2, v2, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v2}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {v1}, Landroidx/picker/model/Selectable;->getSelectableItem()Landroidx/picker/loader/select/SelectableItem;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/picker/features/observable/ObservableProperty;->setValueSilence$picker_app_release(Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    iget-object p0, v0, Landroidx/picker/loader/select/SelectStateLoader;->onSelectListener:Landroidx/picker/widget/SeslAppPickerView$3;

    if-eqz p0, :cond_c

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView$3;->this$0:Landroidx/picker/widget/SeslAppPickerView;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Landroidx/picker/widget/AppPickerState$OnStateChangeListener;->onStateAllChanged(Z)V

    :cond_c
    :goto_5
    return-void
.end method

.method public final shouldCheckHeaderVisibility()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/Configuration;->semIsPopOver()Z

    move-result v0

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to call semIsPopOver"

    invoke-static {p0, v0}, Landroidx/picker/common/log/LogTagHelperKt;->warn(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final submitList(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->clearCheckedItemList()V

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateCheckedAppList(Ljava/util/List;)V

    iget-boolean v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mIsSelectedViewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mCheckStateManager:Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;

    invoke-virtual {v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSearchNoResultFoundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSearchNoResultFoundView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mAppPickerStateView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerView;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final updateCheckedAppList(Landroidx/picker/model/appdata/CategoryAppData;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/picker/model/appdata/CategoryAppData;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->removeSelectItemInCategory(Landroidx/picker/model/appdata/CategoryAppData;)V

    new-instance v0, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    iget-object v1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfo:Landroidx/picker/model/AppInfo;

    invoke-direct {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    iget-object v1, p1, Landroidx/picker/model/appdata/CategoryAppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroidx/picker/helper/DrawableHelperKt;->newMutateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    move-result-object v0

    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/picker/model/AppData$GridRemoveAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    return-void

    :cond_0
    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfoDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/model/AppInfoData;

    invoke-interface {v0}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->convertCheckBox2Remove(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/AppInfoData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final updateCheckedAppList(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/model/AppData;

    instance-of v1, v0, Landroidx/picker/model/AppInfoData;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/picker/model/AppInfoData;

    invoke-interface {v0}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->convertCheckBox2Remove(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/AppInfoData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Landroidx/picker/model/appdata/CategoryAppData;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/picker/model/appdata/CategoryAppData;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateCheckedAppList(Landroidx/picker/model/appdata/CategoryAppData;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Landroidx/picker/model/appdata/GroupAppData;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/picker/model/appdata/GroupAppData;

    iget-object v0, v0, Landroidx/picker/model/appdata/GroupAppData;->appDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/AppData;

    instance-of v2, v1, Landroidx/picker/model/AppInfoData;

    if-eqz v2, :cond_5

    check-cast v1, Landroidx/picker/model/AppInfoData;

    invoke-interface {v1}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->convertCheckBox2Remove(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/AppInfoData;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->addCheckedItem(Landroidx/picker/model/AppInfoData;)V

    goto :goto_1

    :cond_5
    instance-of v2, v1, Landroidx/picker/model/appdata/CategoryAppData;

    if-eqz v2, :cond_4

    check-cast v1, Landroidx/picker/model/appdata/CategoryAppData;

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->updateCheckedAppList(Landroidx/picker/model/appdata/CategoryAppData;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final updateHeaderVisibility()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mShouldCheckHeaderVisibility:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewTitleHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedViewHeight:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mMainViewTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mListItemHeight:I

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    if-eq v0, v2, :cond_4

    iput-boolean v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public final updateLayout$3()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectLayoutType:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    :goto_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    new-instance v3, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedHorizontalItemDecoration;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0707ff

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    new-instance v5, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedVerticallItemDecoration;

    invoke-direct {v5, v1}, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedVerticallItemDecoration;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :goto_2
    iget v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mPaddingHorizontal:I

    if-lez v1, :cond_4

    iget-object v3, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {v3, v1, v4, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillHorizontalPaddingEnabled(Z)V

    :cond_4
    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    new-instance v3, Landroidx/picker/decorator/RecyclerViewCornerDecoration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xf

    invoke-direct {v3, v5, v6}, Landroidx/picker/decorator/RecyclerViewCornerDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    if-ne v0, v2, :cond_5

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    goto :goto_3

    :cond_5
    new-instance v0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mSelectedListView:Landroidx/picker/widget/SeslAppPickerGridView;

    new-instance v3, Landroidx/picker/widget/SeslAppPickerSelectLayout$7;

    invoke-direct {v3, v2, v0}, Landroidx/picker/widget/SeslAppPickerSelectLayout$7;-><init>(Landroidx/picker/widget/SeslAppPickerGridView;Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;)V

    iput-object v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    :goto_3
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0, v4}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->refreshSelectedAppPickerView(Z)V

    return-void
.end method
