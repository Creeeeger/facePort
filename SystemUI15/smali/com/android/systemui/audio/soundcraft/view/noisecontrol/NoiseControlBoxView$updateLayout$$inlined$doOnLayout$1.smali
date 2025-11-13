.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->sequenceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    iget-object p3, p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;

    iget-object p3, p3, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getX()F

    move-result p3

    iget-object p4, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f07143e

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iget-object p2, p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;

    iget-object p5, p2, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p5

    iget-object p2, p2, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    iget-object p6, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iget-object p6, p6, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p6

    xor-int/lit8 p6, p6, 0x1

    const/high16 p7, 0x40000000    # 2.0f

    const/high16 p8, 0x40200000    # 2.5f

    if-eqz p6, :cond_1

    iget-object p6, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    invoke-virtual {p6}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;

    move-result-object p6

    iget-object p6, p6, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-boolean p6, p6, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->isFromCover:Z

    if-nez p6, :cond_0

    int-to-float p6, p4

    mul-float/2addr p6, p8

    goto :goto_1

    :cond_0
    int-to-float p6, p4

    const/high16 p9, 0x40400000    # 3.0f

    mul-float/2addr p6, p9

    :goto_1
    iget-object p9, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iget-object p9, p9, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    sub-int v0, p2, p5

    int-to-float v0, v0

    div-float/2addr v0, p7

    add-float/2addr v0, p3

    sub-float/2addr v0, p6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    invoke-virtual {p9, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p6, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iget-object p6, p6, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    sub-int/2addr p2, p5

    int-to-float p2, p2

    div-float/2addr p2, p7

    add-float/2addr p2, p3

    int-to-float p3, p5

    add-float/2addr p2, p3

    int-to-float p3, p4

    mul-float/2addr p3, p8

    add-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->noiseControlLineView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :goto_2
    return-void
.end method
