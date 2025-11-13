.class public final synthetic Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda13;->f$0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda13;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda13;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->$r8$clinit:I

    iget-object p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_0
    sget v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->$r8$clinit:I

    sget-object v0, Lcom/samsung/android/settings/theftprotection/location/LocationType;->OTHER:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mType:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
