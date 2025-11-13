.class public final Lcom/samsung/android/nexus/base/utils/range/IntRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDelta:I

.field public mMax:I

.field public mMin:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/range/IntRangeable;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    iget v0, p1, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iget p1, p1, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->onRangeUpdated()V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/IntRangeable;)V

    return-object v0
.end method

.method public final onRangeUpdated()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    sub-int v2, v0, v1

    iput v2, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mDelta:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    return-void
.end method
