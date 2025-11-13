.class public final Lcom/android/systemui/media/controls/ui/view/MediaHost$init$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;


# instance fields
.field public final synthetic $location:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaHost;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$2;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    iput p2, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$2;->$location:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMeasure(Lcom/android/systemui/util/animation/MeasurementInput;)Lcom/android/systemui/util/animation/MeasurementOutput;
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v0

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v0

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/animation/MeasurementInput;->setWidthMeasureSpec(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$2;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    invoke-virtual {v1, p1}, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->setMeasurementInput(Lcom/android/systemui/util/animation/MeasurementInput;)V

    iget-object p1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$2;->$location:I

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->updateCarouselDimensions(ILcom/android/systemui/media/controls/ui/view/MediaHostState;)Lcom/android/systemui/util/animation/MeasurementOutput;

    move-result-object p0

    return-object p0
.end method
