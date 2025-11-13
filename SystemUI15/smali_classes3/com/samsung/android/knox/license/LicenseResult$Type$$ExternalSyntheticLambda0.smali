.class public final synthetic Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;->$r8$classId:I

    iget p0, p0, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/samsung/android/knox/license/LicenseResult$Type;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult$Type;->$r8$lambda$W_BM8q6O4oDpfoL__7qenahjRsM(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult$Type;->$r8$lambda$F4FpYoOlOtAYpawoTWRqVZnnkcI(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
