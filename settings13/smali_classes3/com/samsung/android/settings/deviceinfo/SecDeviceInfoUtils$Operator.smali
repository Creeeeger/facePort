.class public final enum Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;
.super Ljava/lang/Enum;
.source "SecDeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

.field public static final enum LGU_PLUS:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

.field public static final enum LICHTENSTEIN:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

.field public static final enum SWISSCOM:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

.field public static final enum UK_VIRGIN:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;


# instance fields
.field private final mccMncList:[Ljava/lang/String;

.field private final simType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 83
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    const-string v1, "20601"

    const-string v2, "20620"

    const-string v3, "23430"

    const-string v4, "23438"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "UK_VIRGIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->UK_VIRGIN:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    .line 84
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    const-string v2, "22801"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "SWISSCOM"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->SWISSCOM:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    .line 85
    new-instance v2, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    const-string v4, "29501"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "LICHTENSTEIN"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->LICHTENSTEIN:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    .line 86
    new-instance v4, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    const-string v6, "45006"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "LGU_PLUS"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->LGU_PLUS:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    .line 82
    sput-object v6, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->$VALUES:[Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object p3, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->mccMncList:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->simType:Ljava/lang/String;

    return-void
.end method

.method private isSimOperator(Ljava/lang/String;)Z
    .locals 1

    .line 103
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->mccMncList:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/Utils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;
    .locals 1

    .line 82
    const-class v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;
    .locals 1

    .line 82
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->$VALUES:[Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    return-object v0
.end method


# virtual methods
.method public isInsertedSim(I)Z
    .locals 2

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, "0"

    .line 107
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->isSimOperator(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
