.class public final synthetic Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;

    sget p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationDeleteFragment;->$r8$clinit:I

    iget p0, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
