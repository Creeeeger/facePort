.class public final synthetic Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mRecommendationValue:Lcom/samsung/android/settings/theftprotection/location/LocationValue;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->launchAddRecommendationPlace(Lcom/samsung/android/settings/theftprotection/location/LocationValue;Z)V

    return-void
.end method
