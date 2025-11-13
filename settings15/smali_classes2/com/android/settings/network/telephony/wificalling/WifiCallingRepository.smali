.class public final Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final carrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public final context:Landroid/content/Context;

.field public final imsMmTelRepository:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

.field public final subId:I

.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;-><init>(Landroid/content/Context;I)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->context:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->subId:I

    iput-object v0, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->imsMmTelRepository:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->telephonyManager:Landroid/telephony/TelephonyManager;

    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->carrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method
