.class public final Lcom/github/mikephil/charting/utils/MPPointD;
.super Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final pool:Lcom/github/mikephil/charting/utils/ObjectPool;


# instance fields
.field public x:D

.field public y:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mikephil/charting/utils/MPPointD;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/MPPointD;-><init>()V

    const/16 v1, 0x40

    invoke-static {v1, v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/utils/MPPointD;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/github/mikephil/charting/utils/ObjectPool;->replenishPercentage:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    iput-wide v0, p0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    return-void
.end method

.method public static getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/utils/MPPointD;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/utils/MPPointD;

    iput-wide p0, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    iput-wide p2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    return-object v0
.end method

.method public static recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/utils/MPPointD;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    return-void
.end method


# virtual methods
.method public final instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .locals 0

    new-instance p0, Lcom/github/mikephil/charting/utils/MPPointD;

    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/MPPointD;-><init>()V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MPPointD, x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
