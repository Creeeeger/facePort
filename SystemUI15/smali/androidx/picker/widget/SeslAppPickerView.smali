.class public abstract Landroidx/picker/widget/SeslAppPickerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;
.implements Landroidx/picker/adapter/AppPickerAdapter$OnBindListener;
.implements Landroidx/picker/common/log/LogTag;


# instance fields
.field public final clearKeyboardListener:Landroidx/picker/widget/SeslAppPickerView$1;

.field public final disposable:Lkotlinx/coroutines/DisposableHandle;

.field public mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

.field public final mContext:Landroid/content/Context;

.field public final mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

.field public final mSelectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

.field public final mSeslRoundedCorner:I

.field public mViewType:I

.field public final scrollListener:Landroidx/picker/widget/SeslAppPickerView$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslAppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslAppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "init strategy="

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0xf

    iput v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mSeslRoundedCorner:I

    const/4 v2, 0x0

    iput v2, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewType:I

    new-instance v3, Landroidx/picker/widget/SeslAppPickerView$1;

    invoke-direct {v3, p0}, Landroidx/picker/widget/SeslAppPickerView$1;-><init>(Landroidx/picker/widget/SeslAppPickerView;)V

    iput-object v3, p0, Landroidx/picker/widget/SeslAppPickerView;->clearKeyboardListener:Landroidx/picker/widget/SeslAppPickerView$1;

    new-instance v3, Landroidx/picker/widget/SeslAppPickerView$2;

    invoke-direct {v3, p0}, Landroidx/picker/widget/SeslAppPickerView$2;-><init>(Landroidx/picker/widget/SeslAppPickerView;)V

    iput-object v3, p0, Landroidx/picker/widget/SeslAppPickerView;->scrollListener:Landroidx/picker/widget/SeslAppPickerView$2;

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

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

    move-result-object v4

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

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, p2

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v6, v4

    move-object v4, p2

    move-object p2, v6

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p3, v4

    move-object v4, p2

    move-object p2, p3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object p2, v4

    move-object p3, p2

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    move-object v4, p2

    move v0, v2

    :goto_1
    if-ne v0, v3, :cond_1

    sget-object p2, Landroidx/picker/model/GroupTitleStyleData;->TRANSPARENT:Landroidx/picker/model/GroupTitleStyleData;

    goto :goto_2

    :cond_1
    sget-object p2, Landroidx/picker/model/GroupTitleStyleData;->SOLID:Landroidx/picker/model/GroupTitleStyleData;

    :goto_2
    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerView;->mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

    const-class p2, Landroidx/picker/di/AppPickerContext;

    if-nez v4, :cond_2

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v1, v2

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

    iput-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    iget-object p1, v0, Landroidx/picker/di/AppPickerContext;->appDataRepository$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/repository/AppDataRepository;

    iget-object p1, v0, Landroidx/picker/di/AppPickerContext;->selectStateLoader$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/loader/select/SelectStateLoader;

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mSelectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    :try_start_5
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Class;

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

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mSelectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    new-instance p3, Landroidx/picker/widget/SeslAppPickerView$3;

    invoke-direct {p3, p0}, Landroidx/picker/widget/SeslAppPickerView$3;-><init>(Landroidx/picker/widget/SeslAppPickerView;)V

    iput-object p3, p1, Landroidx/picker/loader/select/SelectStateLoader;->onSelectListener:Landroidx/picker/widget/SeslAppPickerView$3;

    new-instance p0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p2, Landroidx/picker/controller/DataController;->listeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :goto_5
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw p0
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SeslAppPickerView"

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->scrollListener:Landroidx/picker/widget/SeslAppPickerView$2;

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

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->scrollListener:Landroidx/picker/widget/SeslAppPickerView$2;

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
