.class public final Lcom/android/systemui/brightness/shared/model/GammaBrightness;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final value:I


# direct methods
.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/brightness/shared/model/GammaBrightness;->value:I

    return-void
.end method

.method public static final synthetic box-impl(I)Lcom/android/systemui/brightness/shared/model/GammaBrightness;
    .locals 1

    new-instance v0, Lcom/android/systemui/brightness/shared/model/GammaBrightness;

    invoke-direct {v0, p0}, Lcom/android/systemui/brightness/shared/model/GammaBrightness;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/brightness/shared/model/GammaBrightness;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/systemui/brightness/shared/model/GammaBrightness;

    iget p1, p1, Lcom/android/systemui/brightness/shared/model/GammaBrightness;->value:I

    iget p0, p0, Lcom/android/systemui/brightness/shared/model/GammaBrightness;->value:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/brightness/shared/model/GammaBrightness;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget p0, p0, Lcom/android/systemui/brightness/shared/model/GammaBrightness;->value:I

    const-string v0, "GammaBrightness(value="

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
