.class public final Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Unavailable;
.super Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Unavailable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Unavailable;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Unavailable;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Unavailable;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Unavailable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    instance-of p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Unavailable;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Unavailable;->logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V

    :goto_0
    return-void
.end method

.method public final logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    const-string/jumbo p0, "type"

    const-string v0, "Unavailable"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "networkId"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "subscriptionId"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isValidated"

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    const-string p0, "level"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "maxLevel"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "ssid"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "hotspot"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isPasspointAccessPoint"

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    const-string p0, "isOnlineSignUpForPasspointAccessPoint"

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    const-string p0, "passpointProviderFriendlyName"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiNetwork.Unavailable"

    return-object p0
.end method
