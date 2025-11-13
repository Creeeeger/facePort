.class public final synthetic Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

    check-cast p1, Lcom/samsung/android/settings/theftprotection/location/LocationType;

    sget v0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->nameResID()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
