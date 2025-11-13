.class public final synthetic Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    iget v0, p0, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    check-cast p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LocationManager"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "registerGeofence() key is empty"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v0, "sec_location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/location/SemLocationManager;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->updateInSignificantPlace(Landroid/content/Context;Z)V

    iget-object v3, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ", result="

    if-eqz v4, :cond_1

    const-string/jumbo v0, "unregisterGeofence() key is empty"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/location/SemLocationManager;->removeGeofence(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "unregisterGeofence() removeGeofence: key="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/samsung/android/location/SemGeopointGeofence;

    iget-wide v7, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mLatitude:D

    iget-wide v9, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mLongitude:D

    iget v11, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mRadius:I

    iget-object v12, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/location/SemGeopointGeofence;-><init>(DDILjava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mBSSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mBSSID:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/location/SemGeopointGeofence;->setWifiBssids([Ljava/lang/String;)V

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.settings.action.GEOFENCE_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    const-string/jumbo v6, "requestId"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/settings/theftprotection/receiver/ProtectionReceiver;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget v4, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mType:I

    const/high16 v6, 0xa000000

    invoke-static {p0, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lcom/samsung/android/location/SemLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeopointGeofence;Landroid/app/PendingIntent;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerGeofence() addGeofence: key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mEnterLocation:I

    sget-object v0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->updateLocationData(Lcom/samsung/android/settings/theftprotection/location/LocationData;)V

    iget-object p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LocationManager"

    if-eqz v0, :cond_3

    const-string/jumbo p0, "unregisterGeofence() key is empty"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "sec_location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/location/SemLocationManager;->removeGeofence(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterGeofence() removeGeofence: key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
