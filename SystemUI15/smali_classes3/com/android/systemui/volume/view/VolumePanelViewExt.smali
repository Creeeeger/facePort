.class public final Lcom/android/systemui/volume/view/VolumePanelViewExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelViewExt;

    invoke-direct {v0}, Lcom/android/systemui/volume/view/VolumePanelViewExt;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isIconClickWillConsume(Lcom/android/systemui/volume/view/standard/VolumePanelView;Landroid/view/MotionEvent;)Z
    .locals 3

    const v0, 0x7f0a0e6c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    new-instance v0, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v0, p0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    sget-object p0, Lcom/android/systemui/volume/view/VolumePanelViewExt$isIconClickWillConsume$1;->INSTANCE:Lcom/android/systemui/volume/view/VolumePanelViewExt$isIconClickWillConsume$1;

    new-instance v1, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v1, v0, p0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance p0, Lkotlin/sequences/TransformingSequence$iterator$1;

    invoke-direct {p0, v1}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    :cond_0
    iget-object v0, p0, Lkotlin/sequences/TransformingSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlin/sequences/TransformingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/VolumeRowView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/view/VolumeRowView;->isIconClicked(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isIconClickWillConsume(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;Landroid/view/MotionEvent;)Z
    .locals 3

    const v0, 0x7f0a0e6c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    new-instance v0, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v0, p0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    sget-object p0, Lcom/android/systemui/volume/view/VolumePanelViewExt$isIconClickWillConsume$3;->INSTANCE:Lcom/android/systemui/volume/view/VolumePanelViewExt$isIconClickWillConsume$3;

    new-instance v1, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v1, v0, p0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance p0, Lkotlin/sequences/TransformingSequence$iterator$1;

    invoke-direct {p0, v1}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    :cond_0
    iget-object v0, p0, Lkotlin/sequences/TransformingSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlin/sequences/TransformingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isIconClicked(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
