.class public final synthetic Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    iput p0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    const/4 p0, 0x0

    iput p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->numOfMissingUpdate:I

    return-void
.end method
