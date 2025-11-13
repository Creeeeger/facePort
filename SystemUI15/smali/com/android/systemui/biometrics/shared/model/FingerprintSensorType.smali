.class public final enum Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

.field public static final enum HOME_BUTTON:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

.field public static final enum POWER_BUTTON:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

.field public static final enum REAR:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

.field public static final enum UDFPS_OPTICAL:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

.field public static final enum UDFPS_ULTRASONIC:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

.field public static final enum UNKNOWN:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->UNKNOWN:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    new-instance v1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    const-string v2, "REAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->REAR:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    new-instance v2, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    const-string v3, "UDFPS_ULTRASONIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->UDFPS_ULTRASONIC:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    new-instance v3, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    const-string v4, "UDFPS_OPTICAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->UDFPS_OPTICAL:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    new-instance v4, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    const-string v5, "POWER_BUTTON"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->POWER_BUTTON:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    new-instance v5, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    const-string v6, "HOME_BUTTON"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->HOME_BUTTON:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    filled-new-array/range {v0 .. v5}, [Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->$VALUES:[Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;
    .locals 1

    const-class v0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;
    .locals 1

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->$VALUES:[Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    return-object v0
.end method


# virtual methods
.method public final isUdfps()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->UDFPS_OPTICAL:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->UDFPS_ULTRASONIC:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
