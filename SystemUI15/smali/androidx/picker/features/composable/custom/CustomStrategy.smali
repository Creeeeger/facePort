.class public abstract Landroidx/picker/features/composable/custom/CustomStrategy;
.super Landroidx/picker/features/composable/DefaultComposableStrategy;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final customWidgetList$delegate:Lkotlin/Lazy;

.field private final widgetFrameList$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/picker/features/composable/DefaultComposableStrategy;-><init>()V

    new-instance v0, Landroidx/picker/features/composable/custom/CustomStrategy$customWidgetList$2;

    invoke-direct {v0, p0}, Landroidx/picker/features/composable/custom/CustomStrategy$customWidgetList$2;-><init>(Landroidx/picker/features/composable/custom/CustomStrategy;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/custom/CustomStrategy;->customWidgetList$delegate:Lkotlin/Lazy;

    new-instance v0, Landroidx/picker/features/composable/custom/CustomStrategy$widgetFrameList$2;

    invoke-direct {v0, p0}, Landroidx/picker/features/composable/custom/CustomStrategy$widgetFrameList$2;-><init>(Landroidx/picker/features/composable/custom/CustomStrategy;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/features/composable/custom/CustomStrategy;->widgetFrameList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCustomWidgetList(Landroidx/picker/features/composable/custom/CustomStrategy;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Landroidx/picker/features/composable/custom/CustomStrategy;->getCustomWidgetList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getCustomWidgetList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/picker/features/composable/custom/CustomStrategy;->customWidgetList$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public abstract getCustomFrameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public getWidgetFrameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/picker/features/composable/custom/CustomStrategy;->widgetFrameList$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public selectComposableType(Landroidx/picker/model/viewdata/ViewData;)Landroidx/picker/features/composable/ComposableType;
    .locals 2

    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/picker/features/composable/DefaultComposableStrategy;->selectComposableType(Landroidx/picker/model/viewdata/ViewData;)Landroidx/picker/features/composable/ComposableType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Landroidx/picker/features/composable/custom/CustomStrategy;->getCustomWidgetList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroidx/picker/features/composable/DefaultComposableStrategy;->selectComposableType(Landroidx/picker/model/viewdata/ViewData;)Landroidx/picker/features/composable/ComposableType;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
