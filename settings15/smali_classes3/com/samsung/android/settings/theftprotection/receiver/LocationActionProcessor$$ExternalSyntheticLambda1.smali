.class public final synthetic Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor$$ExternalSyntheticLambda1;->f$0:Z

    iput p1, p0, Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor$$ExternalSyntheticLambda1;->f$0:Z

    iget p0, p0, Lcom/samsung/android/settings/theftprotection/receiver/LocationActionProcessor$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    iput v0, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mEnterLocation:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput p0, p1, Lcom/samsung/android/settings/theftprotection/location/LocationData;->mEnterLocation:I

    :goto_0
    sget-object p0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->updateLocationData(Lcom/samsung/android/settings/theftprotection/location/LocationData;)V

    return-void
.end method
