.class final Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$3;
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


# instance fields
.field final synthetic $enableAccessibility:Z

.field final synthetic $onWidthChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $slice:Landroidx/slice/Slice;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            "Lkotlin/jvm/functions/Function1;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$3;->$slice:Landroidx/slice/Slice;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$3;->$onWidthChanged:Lkotlin/jvm/functions/Function1;

    iput-boolean p3, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$3;->$enableAccessibility:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$3;->$slice:Landroidx/slice/Slice;

    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$3;->$onWidthChanged:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/volume/panel/component/anc/ui/composable/OnWidthChangedLayoutListener;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/OnWidthChangedLayoutListener;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p1, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;->layoutListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object v1, p1, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;->layoutListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$3;->$enableAccessibility:Z

    iput-boolean p0, p1, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;->enableAccessibility:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
