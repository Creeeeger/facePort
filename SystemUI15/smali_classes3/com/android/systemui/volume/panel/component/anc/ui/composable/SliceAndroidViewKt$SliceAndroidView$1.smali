.class final Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$1;

    invoke-direct {v0}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$1;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$1;->INSTANCE:Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/content/Context;

    new-instance p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f1408c5

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setMode(I)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    iget-boolean v1, v0, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    iget-object v0, v0, Landroidx/slice/widget/SliceViewPolicy;->mListener:Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/slice/widget/TemplateView;

    iget-object v2, v0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v1, v0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v3, v0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_1

    iput-boolean p1, v0, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    :cond_1
    return-object p0
.end method
