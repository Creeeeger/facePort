.class public abstract Landroidx/picker/widget/SeslAppPickerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;
.implements Landroidx/picker/adapter/AppPickerAdapter$OnBindListener;
.implements Landroidx/picker/common/log/LogTag;


# instance fields
.field public final clearKeyboardListener:Landroidx/picker/widget/SeslAppPickerView$1;

.field public final disposable:Lkotlinx/coroutines/DisposableHandle;

.field public mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

.field public final mAppDataRepository:Landroidx/picker/repository/AppDataRepository;

.field public final mContext:Landroid/content/Context;

.field public final mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

.field public mOnClickEventListener:Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;

.field public mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

.field public final mSelectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

.field public final mSeslRoundedCorner:I

.field public final mViewDataController:Landroidx/picker/controller/ViewDataController;

.field public mViewType:I

.field public final scrollListener:Landroidx/picker/widget/SeslAppPickerView$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "init strategy="

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0xf

    iput v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mSeslRoundedCorner:I

    const/4 v2, 0x0

    iput v2, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewType:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/picker/widget/SeslAppPickerView;->mOnClickEventListener:Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;

    iput-object v3, p0, Landroidx/picker/widget/SeslAppPickerView;->mOnStateChangeListener:Landroidx/picker/widget/AppPickerState$OnStateChangeListener;

    new-instance v4, Landroidx/picker/widget/SeslAppPickerView$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroidx/picker/widget/SeslAppPickerView$1;-><init>(Landroidx/picker/widget/SeslAppPickerView;I)V

    iput-object v4, p0, Landroidx/picker/widget/SeslAppPickerView;->clearKeyboardListener:Landroidx/picker/widget/SeslAppPickerView$1;

    new-instance v4, Landroidx/picker/widget/SeslAppPickerView$1;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Landroidx/picker/widget/SeslAppPickerView$1;-><init>(Landroidx/picker/widget/SeslAppPickerView;I)V

    iput-object v4, p0, Landroidx/picker/widget/SeslAppPickerView;->scrollListener:Landroidx/picker/widget/SeslAppPickerView$1;

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    :try_start_0
    sget-object v5, Landroidx/picker/R$styleable;->SeslAppPickerView:[I

    invoke-virtual {p1, p2, v5, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p3, 0x3

    :try_start_1
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mSeslRoundedCorner:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", roundedCorner="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, p2

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v6, v3

    move-object v3, p2

    move-object p2, v6

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p3, v3

    move-object v3, p2

    move-object p2, p3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object p2, v3

    move-object p3, p2

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    move-object v3, p2

    move v0, v2

    :goto_1
    if-ne v0, v4, :cond_1

    sget-object p2, Landroidx/picker/model/GroupTitleStyleData;->TRANSPARENT:Landroidx/picker/model/GroupTitleStyleData;

    goto :goto_2

    :cond_1
    sget-object p2, Landroidx/picker/model/GroupTitleStyleData;->SOLID:Landroidx/picker/model/GroupTitleStyleData;

    :goto_2
    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerView;->mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

    const-class p2, Landroidx/picker/di/AppPickerContext;

    if-nez v3, :cond_2

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/di/AppPickerContext;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    new-instance v0, Landroidx/picker/di/AppPickerContext;

    invoke-direct {v0, p1}, Landroidx/picker/di/AppPickerContext;-><init>(Landroid/content/Context;)V

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "used appPickerContext: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V

    iget-object p1, v0, Landroidx/picker/di/AppPickerContext;->appDataRepository$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/repository/AppDataRepository;

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mAppDataRepository:Landroidx/picker/repository/AppDataRepository;

    iget-object p1, v0, Landroidx/picker/di/AppPickerContext;->selectStateLoader$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/loader/select/SelectStateLoader;

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mSelectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    :try_start_5
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array p3, v4, [Ljava/lang/Class;

    aput-object p2, p3, v2

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/controller/strategy/Strategy;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    new-instance p1, Landroidx/picker/controller/strategy/AppItemStrategy;

    invoke-direct {p1, v0}, Landroidx/picker/controller/strategy/AppItemStrategy;-><init>(Landroidx/picker/di/AppPickerContext;)V

    :goto_4
    new-instance p2, Landroidx/picker/controller/ViewDataController;

    invoke-direct {p2, p1}, Landroidx/picker/controller/ViewDataController;-><init>(Landroidx/picker/controller/strategy/Strategy;)V

    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    new-instance p1, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/widget/SeslAppPickerView;I)V

    iget-object p3, p0, Landroidx/picker/widget/SeslAppPickerView;->mSelectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    new-instance v0, Landroidx/picker/widget/SeslAppPickerView$3;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslAppPickerView$3;-><init>(Landroidx/picker/widget/SeslAppPickerView;)V

    iput-object v0, p3, Landroidx/picker/loader/select/SelectStateLoader;->onSelectListener:Landroidx/picker/widget/SeslAppPickerView$3;

    new-instance p3, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1}, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda3;-><init>(Landroidx/picker/widget/SeslAppPickerView;Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;)V

    iget-object p0, p2, Landroidx/picker/controller/ViewDataController;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :goto_5
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw p0
.end method


# virtual methods
.method public final addFooter(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-static {p1, v0}, Landroidx/picker/helper/RoundedCornerHelperKt;->seslSetRoundedCorner$default(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->footerViewInfoList:Ljava/util/List;

    new-instance v1, Landroidx/picker/model/viewdata/HeaderFooterViewData;

    invoke-direct {v1, p1}, Landroidx/picker/model/viewdata/HeaderFooterViewData;-><init>(Landroid/view/View;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {p1}, Landroidx/picker/adapter/AbsAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getHeadersCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getFootersCount()I

    move-result p1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method

.method public final addHeader(Landroid/view/View;I)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroidx/picker/helper/RoundedCornerHelperKt;->seslSetRoundedCorner$default(Landroid/view/View;I)V

    iget-object p2, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    new-instance v0, Landroidx/picker/model/viewdata/HeaderFooterViewData;

    invoke-direct {v0, p1}, Landroidx/picker/model/viewdata/HeaderFooterViewData;-><init>(Landroid/view/View;)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getHeadersCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method

.method public final getAppData(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/AppData;
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "appInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/picker/controller/ViewDataController;->getViewData(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/viewdata/ViewData;

    move-result-object p0

    instance-of p1, p0, Landroidx/picker/model/viewdata/AppSideViewData;

    if-eqz p1, :cond_1

    instance-of p1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v0}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    invoke-static {p1}, Landroidx/picker/helper/FlowHelperKt;->loadIconSync(Lkotlinx/coroutines/flow/Flow;)V

    :cond_0
    check-cast p0, Landroidx/picker/model/viewdata/AppSideViewData;

    invoke-interface {p0}, Landroidx/picker/model/viewdata/AppSideViewData;->getAppData()Landroidx/picker/model/AppData;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public abstract getAppPickerAdapter()Landroidx/picker/adapter/AbsAdapter;
.end method

.method public abstract getLayoutManager$1$1()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end method

.method public final initialize()V
    .locals 2

    new-instance v0, Landroidx/picker/adapter/HeaderFooterAdapter;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerView;->getAppPickerAdapter()Landroidx/picker/adapter/AbsAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/picker/adapter/HeaderFooterAdapter;-><init>(Landroidx/picker/adapter/AbsAdapter;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    iget v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewType:I

    invoke-virtual {p0, v1, v0}, Landroidx/picker/widget/SeslAppPickerView;->setItemDecoration(ILandroidx/picker/adapter/HeaderFooterAdapter;)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerView;->getLayoutManager$1$1()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    iput-object p0, v0, Landroidx/picker/adapter/AbsAdapter;->mOnBindListener:Landroidx/picker/adapter/AppPickerAdapter$OnBindListener;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->scrollListener:Landroidx/picker/widget/SeslAppPickerView$1;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->clearKeyboardListener:Landroidx/picker/widget/SeslAppPickerView$1;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->scrollListener:Landroidx/picker/widget/SeslAppPickerView$1;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->clearKeyboardListener:Landroidx/picker/widget/SeslAppPickerView$1;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Landroidx/picker/adapter/viewholder/PickerViewHolder;

    invoke-virtual {p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->onViewRecycled()V

    return-void
.end method

.method public final setAppListOrder(I)V
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/picker/controller/order/ReverseOrder;

    new-instance v1, Landroidx/picker/controller/order/StrengthOrder;

    invoke-direct {v1, v0}, Landroidx/picker/controller/order/StrengthOrder;-><init>(I)V

    invoke-direct {p1, v1}, Landroidx/picker/controller/order/ReverseOrder;-><init>(Landroidx/picker/controller/order/StrengthOrder;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/picker/controller/order/ReverseOrder;

    new-instance v0, Landroidx/picker/controller/order/StrengthOrder;

    invoke-direct {v0, v1}, Landroidx/picker/controller/order/StrengthOrder;-><init>(I)V

    invoke-direct {p1, v0}, Landroidx/picker/controller/order/ReverseOrder;-><init>(Landroidx/picker/controller/order/StrengthOrder;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroidx/picker/controller/order/StrengthOrder;

    invoke-direct {p1, v0}, Landroidx/picker/controller/order/StrengthOrder;-><init>(I)V

    goto :goto_0

    :cond_3
    new-instance p1, Landroidx/picker/controller/order/StrengthOrder;

    invoke-direct {p1, v1}, Landroidx/picker/controller/order/StrengthOrder;-><init>(I)V

    :goto_0
    iput-object p1, p0, Landroidx/picker/controller/ViewDataController;->order:Ljava/util/Comparator;

    iget-object v0, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Landroidx/picker/controller/ViewDataController;->submit(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public abstract setItemDecoration(ILandroidx/picker/adapter/HeaderFooterAdapter;)V
.end method

.method public final setOnItemClickEventListener(Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;)V
    .locals 1

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mOnClickEventListener:Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/widget/SeslAppPickerView;I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    iput-object p2, v0, Landroidx/picker/adapter/AbsAdapter;->mOnSearchFilterListener:Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {p0}, Landroidx/picker/adapter/AbsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final submitList(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "submitList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/picker/common/log/LogTagHelperKt;->info(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mAppDataRepository:Landroidx/picker/repository/AppDataRepository;

    const/4 v0, 0x0

    iget-object p1, p1, Landroidx/picker/repository/AppDataRepository;->appDataListFactory:Landroidx/picker/features/scs/AbstractAppDataListFactory;

    invoke-virtual {p1, v0}, Landroidx/picker/features/scs/AbstractAppDataListFactory;->getDataList(I)Ljava/util/List;

    move-result-object v0

    const-string p1, "appDataListFactory.dataList"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewDataController:Landroidx/picker/controller/ViewDataController;

    invoke-virtual {p0, v0}, Landroidx/picker/controller/ViewDataController;->setAppDataList(Ljava/util/List;)V

    return-void
.end method
