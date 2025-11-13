.class public final synthetic Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->mLocationTypes:[Lcom/samsung/android/settings/theftprotection/location/LocationType;

    aget-object p2, v0, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCategoryClicked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MandatoryBiometricLocationFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/theftprotection/location/LocationType;->OTHER:Lcom/samsung/android/settings/theftprotection/location/LocationType;

    invoke-virtual {v1}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v1

    const/16 v2, 0x3f3

    const/4 v3, 0x1

    const-string v4, "is_add"

    const-string v5, "place_category"

    const-string v6, "com.samsung.android.samsungaccount.action.LOCATION_PICKER"

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result p2

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->launchPlaceActivity(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->getPlaceByType(I)Lcom/samsung/android/settings/theftprotection/location/LocationData;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result p2

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->launchPlaceActivity(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/settings/theftprotection/location/LocationType;->value()I

    move-result p2

    new-instance v1, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;Lcom/samsung/android/settings/theftprotection/location/LocationData;)V

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->showReplaceDialog(ILjava/lang/Runnable;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    check-cast p0, Ljava/lang/Runnable;

    sget p1, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricLocationFragment;->$r8$clinit:I

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
