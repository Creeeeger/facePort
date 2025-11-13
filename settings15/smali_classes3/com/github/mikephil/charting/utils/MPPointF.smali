.class public final Lcom/github/mikephil/charting/utils/MPPointF;
.super Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final pool:Lcom/github/mikephil/charting/utils/ObjectPool;


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mikephil/charting/utils/MPPointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    const/16 v1, 0x20

    invoke-static {v1, v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/utils/MPPointF;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/github/mikephil/charting/utils/ObjectPool;->replenishPercentage:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;-><init>()V

    iput p1, p0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput p2, p0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    return-void
.end method

.method public static getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/utils/MPPointF;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/utils/MPPointF;

    iput p0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput p1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    return-object v0
.end method


# virtual methods
.method public final instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .locals 1

    new-instance p0, Lcom/github/mikephil/charting/utils/MPPointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    return-object p0
.end method
