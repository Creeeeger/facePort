.class public final Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;


# virtual methods
.method public final handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ACTION_GEOFENCE_STATE_CHANGED: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isMandatoryBiometricEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocationActionProcessor"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "transition"

    const/4 v1, -0x1

    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v1, "requestId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const-string v4, "location"

    const-class v5, Landroid/location/Location;

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/Location;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/location/Location;->isMock()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "GEOFENCE_STATE_CHANGED: direction="

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "GEOFENCE_STATE_CHANGED: info : "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p0, :cond_2

    sget-object p2, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {p2}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor$$ExternalSyntheticLambda1;-><init>(IZ)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->updateInSignificantPlace(Landroid/content/Context;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "GEOFENCE_STATE_CHANGED: inTrustedPlace: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
