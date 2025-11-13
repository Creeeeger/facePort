.class public final Landroidx/picker/features/composable/title/ComposableTitleViewHolder;
.super Landroidx/picker/features/composable/ComposableViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty;"
        }
    .end annotation
.end field


# instance fields
.field private currentLayoutId:I

.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final extraTitleView:Landroid/widget/TextView;

.field private final highlightColor$delegate:Lkotlin/Lazy;

.field private final subLabelDescriptionColor$delegate:Lkotlin/Lazy;

.field private final subLabelValueColor$delegate:Lkotlin/Lazy;

.field private final summaryView:Landroid/widget/TextView;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$ParuJT2JDxSgcuKTwCPxlDabk1Q(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->bindData$lambda$3(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-string v1, "<v#0>"

    const/4 v2, 0x0

    const-class v3, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;

    const-string v4, "highlightText"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0d34

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0a0cd1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->summaryView:Landroid/widget/TextView;

    const v0, 0x7f0a0437

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->extraTitleView:Landroid/widget/TextView;

    new-instance v0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$highlightColor$2;

    invoke-direct {v0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$highlightColor$2;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->highlightColor$delegate:Lkotlin/Lazy;

    new-instance v0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$subLabelValueColor$2;

    invoke-direct {v0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$subLabelValueColor$2;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->subLabelValueColor$delegate:Lkotlin/Lazy;

    new-instance v0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$subLabelDescriptionColor$2;

    invoke-direct {v0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$subLabelDescriptionColor$2;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->subLabelDescriptionColor$delegate:Lkotlin/Lazy;

    const p1, 0x7f0d02a7

    iput p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    return-void
.end method

.method public static final synthetic access$adjustLayout(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->adjustLayout(Z)V

    return-void
.end method

.method public static final synthetic access$getCurrentLayoutId$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)I
    .locals 0

    iget p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    return p0
.end method

.method public static final synthetic access$getHighlightColor(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)I
    .locals 0

    invoke-direct {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getHighlightColor()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLayoutId(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Z)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getLayoutId(Z)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSubLabelShowState(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;Landroidx/picker/model/viewdata/ViewData;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getSubLabelShowState(Landroidx/picker/model/viewdata/ViewData;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTitleView$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$setCurrentLayoutId$p(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;I)V
    .locals 0

    iput p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    return-void
.end method

.method private final adjustLayout(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getLayoutHeight(Z)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method private static final bindData$lambda$1(Landroidx/picker/features/observable/ObservableProperty;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/features/observable/ObservableProperty<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/picker/features/observable/ObservableProperty;->getValue$picker_app_release(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final bindData$lambda$3(Ljava/util/List;)V
    .locals 1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getHighlightColor()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->highlightColor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getLayoutHeight(Z)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070cba

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/features/composable/ComposableViewHolder;->getFrameView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070cb6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getLayoutId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f0d02a8

    goto :goto_0

    :cond_0
    const p0, 0x7f0d02a7

    :goto_0
    return p0
.end method

.method private final getSubLabelDescriptionColor()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->subLabelDescriptionColor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getSubLabelShowState(Landroidx/picker/model/viewdata/ViewData;)Z
    .locals 2

    instance-of p0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getItemType()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    iget-object p0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->isValueInSubLabel()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private final getSubLabelValueColor()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->subLabelValueColor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 7

    iget-object v0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v1, :cond_4

    move-object v2, p1

    check-cast v2, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v3, v2, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v3}, Landroidx/picker/model/AppInfoData;->getSubLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getSubLabelShowState(Landroidx/picker/model/viewdata/ViewData;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v4}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getLayoutId(Z)I

    move-result v5

    iget v6, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    if-eq v6, v5, :cond_2

    iput v5, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->currentLayoutId:I

    invoke-direct {p0, v4}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->adjustLayout(Z)V

    :cond_2
    iget-object v4, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    invoke-interface {v3}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->summaryView:Landroid/widget/TextView;

    invoke-interface {v3}, Landroidx/picker/model/AppInfoData;->getSubLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->extraTitleView:Landroid/widget/TextView;

    invoke-interface {v3}, Landroidx/picker/model/AppInfoData;->getExtraLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->summaryView:Landroid/widget/TextView;

    invoke-interface {v3}, Landroidx/picker/model/AppInfoData;->isValueInSubLabel()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getSubLabelValueColor()I

    move-result v3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getSubLabelDescriptionColor()I

    move-result v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v2, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    if-eqz v2, :cond_6

    new-instance v3, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;

    invoke-direct {v3, p1, p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$1;-><init>(Landroidx/picker/model/viewdata/ViewData;Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)V

    invoke-virtual {v2, v3}, Landroidx/picker/loader/select/SelectableItem;->registerAfterChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    instance-of v2, p1, Landroidx/picker/model/viewdata/CategoryViewData;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    move-object v3, p1

    check-cast v3, Landroidx/picker/model/viewdata/CategoryViewData;

    iget-object v3, v3, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    iget-object v3, v3, Landroidx/picker/model/appdata/CategoryAppData;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    instance-of v2, p1, Landroidx/picker/model/viewdata/AllAppsViewData;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f13136a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->highlightText:Landroidx/picker/features/observable/ObservableProperty;

    iget-object v1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->titleView:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->bindData$lambda$1(Landroidx/picker/features/observable/ObservableProperty;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->getHighlightColor()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/picker/helper/TextViewHelperKt;->setHighLightText(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v1, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;

    invoke-direct {v1, p0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$bindData$3;-><init>(Landroidx/picker/features/composable/title/ComposableTitleViewHolder;)V

    invoke-virtual {p1, v1}, Landroidx/picker/features/observable/ObservableProperty;->bind$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance p1, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Landroidx/picker/features/composable/title/ComposableTitleViewHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/picker/features/composable/title/ComposableTitleViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    return-void
.end method
