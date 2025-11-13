.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $dataList:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;->$dataList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

    iget-object p2, p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;->linePath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

    iget-object p2, p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;->dotList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;->$dataList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p5

    iget-object p6, p3, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;->linePath:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_1

    rem-int/lit8 p6, p4, 0x2

    if-nez p6, :cond_0

    goto :goto_1

    :cond_0
    iget-object p6, p3, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;->linePath:Landroid/graphics/Path;

    invoke-virtual {p6, p5, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p6, p3, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;->linePath:Landroid/graphics/Path;

    invoke-virtual {p6, p5, p1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_2
    iget-object p6, p3, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;->dotList:Ljava/util/ArrayList;

    new-instance p7, Landroid/graphics/PointF;

    invoke-direct {p7, p5, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p6, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
