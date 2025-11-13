.class public final synthetic Lcom/samsung/android/settings/theftprotection/location/LocationStorage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

.field public final synthetic f$1:Lcom/samsung/android/settings/theftprotection/location/LocationData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/location/LocationStorage;Lcom/samsung/android/settings/theftprotection/location/LocationData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/theftprotection/location/LocationData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/theftprotection/location/LocationData;

    check-cast p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mEnterLocation:I

    iput v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mEnterLocation:I

    iget-wide v1, p0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mLatitude:D

    iput-wide v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mLatitude:D

    iget-wide v1, p0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mLongitude:D

    iput-wide v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mLongitude:D

    iget v1, p0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mRadius:I

    iput v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mRadius:I

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mSSID:Ljava/lang/String;

    iput-object v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mSSID:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mAddress:Ljava/lang/String;

    iput-object v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mName:Ljava/lang/String;

    iput-object v1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mName:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mType:I

    iput p0, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mType:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLocationData updated : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocationStorage"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->mHandler:Lcom/samsung/android/settings/theftprotection/location/LocationStorage$StorageHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
