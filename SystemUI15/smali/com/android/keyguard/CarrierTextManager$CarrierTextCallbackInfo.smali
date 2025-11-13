.class public final Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final airplaneMode:Z

.field public final anySimReady:Z

.field public final carrierText:Ljava/lang/CharSequence;

.field public final isInSatelliteMode:Z

.field public final listOfCarriers:[Ljava/lang/CharSequence;

.field public final location:Ljava/lang/String;

.field public final subscriptionIds:[I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZZ[IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZZ[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->anySimReady:Z

    iput-boolean p5, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->isInSatelliteMode:Z

    iput-object p6, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->subscriptionIds:[I

    iput-boolean p7, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->airplaneMode:Z

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarrierTextCallbackInfo{carrierText="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listOfCarriers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", anySimReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->anySimReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInSatelliteMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->isInSatelliteMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->subscriptionIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", airplaneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->airplaneMode:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/ChangeSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
