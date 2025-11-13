.class public final Lcom/github/mikephil/charting/jobs/MoveViewJob;
.super Lcom/github/mikephil/charting/jobs/ViewPortJob;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final pool:Lcom/github/mikephil/charting/utils/ObjectPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/github/mikephil/charting/jobs/MoveViewJob;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v1}, Lcom/github/mikephil/charting/jobs/MoveViewJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FLcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/charts/LineChart;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/github/mikephil/charting/utils/ObjectPool;->replenishPercentage:F

    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FLcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/charts/LineChart;)V
    .locals 1

    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->pts:[F

    iput-object p1, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iput p2, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->xValue:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->yValue:F

    iput-object p3, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iput-object p4, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .locals 4

    new-instance v0, Lcom/github/mikephil/charting/jobs/MoveViewJob;

    iget-object v1, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v2, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->xValue:F

    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object p0, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->view:Landroid/view/View;

    check-cast p0, Lcom/github/mikephil/charting/charts/LineChart;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FLcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/charts/LineChart;)V

    return-object v0
.end method

.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->pts:[F

    iget v1, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->xValue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->yValue:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->pts:[F

    iget-object v4, p0, Lcom/github/mikephil/charting/jobs/ViewPortJob;->view:Landroid/view/View;

    check-cast v4, Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v5, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mCenterViewPortMatrixBuffer:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    aget v2, v1, v2

    iget-object v6, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v7

    aget v1, v1, v3

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v6

    neg-float v2, v2

    neg-float v1, v1

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0, v5, v4, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)V

    sget-object v0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    return-void
.end method
