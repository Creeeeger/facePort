.class public Landroidx/picker/widget/SeslAppPickerListView;
.super Landroidx/picker/widget/SeslAppPickerView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mComposableStrategy:Landroidx/picker/features/composable/ComposableStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslAppPickerListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslAppPickerListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroidx/picker/widget/SeslAppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewType:I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroidx/picker/R$styleable;->SeslAppPickerListView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_6

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p2

    move-object p1, v1

    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_1

    :try_start_3
    const-class p1, Landroidx/picker/features/composable/DefaultComposableStrategy;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/features/composable/ComposableStrategy;

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerListView;->mComposableStrategy:Landroidx/picker/features/composable/ComposableStrategy;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :goto_3
    const-string/jumbo p2, "used DefaultComposableStrategy"

    invoke-static {p0, p2}, Landroidx/picker/common/log/LogTagHelperKt;->info(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "Unknown error"

    :cond_2
    invoke-static {p0, p2}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    sget-boolean p2, Landroidx/picker/common/log/LogTagHelperKt;->IS_DEBUG_DEVICE:Z

    if-nez p2, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    new-instance p1, Landroidx/picker/features/composable/DefaultComposableStrategy;

    invoke-direct {p1}, Landroidx/picker/features/composable/DefaultComposableStrategy;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerListView;->mComposableStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "use ComposableStrategy: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslAppPickerListView;->mComposableStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerView;->initialize()V

    return-void

    :goto_6
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    throw p0
.end method


# virtual methods
.method public final getAppPickerAdapter()Landroidx/picker/adapter/AbsAdapter;
    .locals 2

    new-instance v0, Landroidx/picker/adapter/ListAdapter;

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerListView;->mComposableStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    invoke-direct {v0, v1, p0}, Landroidx/picker/adapter/ListAdapter;-><init>(Landroid/content/Context;Landroidx/picker/features/composable/ComposableStrategy;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object v0
.end method

.method public final getLayoutManager$1$1()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SeslAppPickerListView"

    return-object p0
.end method

.method public final setItemDecoration(ILandroidx/picker/adapter/HeaderFooterAdapter;)V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/picker/decorator/RecyclerViewCornerDecoration;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    iget v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mSeslRoundedCorner:I

    invoke-direct {p1, v0, v1}, Landroidx/picker/decorator/RecyclerViewCornerDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Landroidx/picker/decorator/ListSpacingItemDecoration;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/picker/decorator/ListSpacingItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Landroidx/picker/decorator/ListDividerItemDecoration;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/picker/decorator/ListDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    sget-object v0, Landroidx/picker/model/GroupTitleStyleData;->SOLID:Landroidx/picker/model/GroupTitleStyleData;

    invoke-virtual {v0}, Landroidx/picker/model/GroupTitleStyleData;->getBackgroundColorId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    new-instance v0, Landroidx/picker/decorator/RoundedCornerDecoration;

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Landroidx/picker/decorator/RoundedCornerDecoration;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
