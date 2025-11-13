.class public final Lcom/github/mikephil/charting/utils/FSize;
.super Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final pool:Lcom/github/mikephil/charting/utils/ObjectPool;


# instance fields
.field public height:F

.field public width:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mikephil/charting/utils/FSize;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/FSize;-><init>()V

    const/16 v1, 0x100

    invoke-static {v1, v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/utils/FSize;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/github/mikephil/charting/utils/ObjectPool;->replenishPercentage:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iput v0, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/github/mikephil/charting/utils/FSize;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/github/mikephil/charting/utils/FSize;

    iget v2, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget v3, p1, Lcom/github/mikephil/charting/utils/FSize;->width:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    iget p1, p1, Lcom/github/mikephil/charting/utils/FSize;->height:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget p0, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .locals 0

    new-instance p0, Lcom/github/mikephil/charting/utils/FSize;

    invoke-direct {p0}, Lcom/github/mikephil/charting/utils/FSize;-><init>()V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/github/mikephil/charting/utils/FSize;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
