.class public final synthetic Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

.field public final synthetic f$1:Lcom/samsung/android/settings/theftprotection/location/LocationData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;Lcom/samsung/android/settings/theftprotection/location/LocationData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda15;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda15;->f$1:Lcom/samsung/android/settings/theftprotection/location/LocationData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda15;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda15;->f$1:Lcom/samsung/android/settings/theftprotection/location/LocationData;

    sget v1, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchEditPlace: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MandatoryBiometricLocationFragment"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mSelectedPlaceKey:Ljava/lang/String;

    const-string v1, "com.samsung.android.samsungaccount.action.LOCATION_PICKER"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->getLocationInformationIntent(Ljava/lang/String;Lcom/samsung/android/settings/theftprotection/location/LocationData;)Landroid/content/Intent;

    move-result-object p0

    const-string v1, "is_add"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->launchPlaceActivity(ILandroid/content/Intent;)V

    return-void
.end method
