.class public final Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# instance fields
.field public final mValueCount:I

.field public final mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValues:[Ljava/lang/String;

    iput v0, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValueCount:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValues:[Ljava/lang/String;

    array-length p1, p1

    iput p1, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValueCount:I

    return-void
.end method


# virtual methods
.method public final getFormattedValue(F)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValueCount:I

    if-ge v0, v1, :cond_1

    float-to-int p1, p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValues:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method
