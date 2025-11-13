.class public final enum Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

.field public static final enum UK_VIRGIN:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;


# instance fields
.field private final mccMncList:[Ljava/lang/String;

.field private final simType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    const-string v1, "20601"

    const-string v2, "20620"

    const-string v3, "23430"

    const-string v4, "23438"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->UK_VIRGIN:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    filled-new-array {v0}, [Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->$VALUES:[Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    const-string v0, "UK_VIRGIN"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->mccMncList:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->simType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->$VALUES:[Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    return-object v0
.end method


# virtual methods
.method public final isInsertedSim(I)Z
    .locals 2

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->mccMncList:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/Utils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/settings/Utils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
