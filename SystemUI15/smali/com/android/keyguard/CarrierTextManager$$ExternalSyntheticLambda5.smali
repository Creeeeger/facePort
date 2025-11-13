.class public final synthetic Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/CarrierTextManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/CarrierTextManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/CarrierTextManager;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdateCarrierTextForReason(I)V

    invoke-virtual {v0, p1}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logNewSatelliteCarrierText(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mSatelliteCarrierText:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->updateCarrierText(Landroid/content/Intent;)V

    return-void
.end method
