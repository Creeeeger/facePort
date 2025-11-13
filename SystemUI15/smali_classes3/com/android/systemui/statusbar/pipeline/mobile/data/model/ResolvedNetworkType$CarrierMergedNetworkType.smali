.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$CarrierMergedNetworkType;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$CarrierMergedNetworkType;

.field public static final iconGroupOverride:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public static final lookupKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$CarrierMergedNetworkType;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$CarrierMergedNetworkType;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$CarrierMergedNetworkType;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$CarrierMergedNetworkType;

    const-string v0, "cwf"

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$CarrierMergedNetworkType;->lookupKey:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$CarrierMergedNetworkType;->iconGroupOverride:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLookupKey()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/ResolvedNetworkType$CarrierMergedNetworkType;->lookupKey:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "CarrierMerged"

    return-object p0
.end method
