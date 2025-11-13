.class public final Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final carrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public final imsMmTelRepositoryFactory:Lkotlin/jvm/functions/Function1;

.field public final signalStrengthRepository:Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;

.field public final simSlotRepository:Lcom/android/settings/network/telephony/SimSlotRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/network/telephony/SimSlotRepository;

    invoke-direct {v0, p1}, Lcom/android/settings/network/telephony/SimSlotRepository;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;

    invoke-direct {v1, p1}, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$1;

    invoke-direct {v2, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;->simSlotRepository:Lcom/android/settings/network/telephony/SimSlotRepository;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;->signalStrengthRepository:Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;->imsMmTelRepositoryFactory:Lkotlin/jvm/functions/Function1;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;->carrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method
