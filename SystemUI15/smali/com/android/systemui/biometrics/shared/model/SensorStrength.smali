.class public final enum Lcom/android/systemui/biometrics/shared/model/SensorStrength;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/biometrics/shared/model/SensorStrength;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/biometrics/shared/model/SensorStrength;

.field public static final enum CONVENIENCE:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

.field public static final enum STRONG:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

.field public static final enum WEAK:Lcom/android/systemui/biometrics/shared/model/SensorStrength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    const-string v1, "CONVENIENCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/biometrics/shared/model/SensorStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/biometrics/shared/model/SensorStrength;->CONVENIENCE:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    new-instance v1, Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    const-string v2, "WEAK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/biometrics/shared/model/SensorStrength;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/biometrics/shared/model/SensorStrength;->WEAK:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    new-instance v2, Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    const-string v3, "STRONG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/biometrics/shared/model/SensorStrength;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/biometrics/shared/model/SensorStrength;->STRONG:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/shared/model/SensorStrength;->$VALUES:[Lcom/android/systemui/biometrics/shared/model/SensorStrength;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/biometrics/shared/model/SensorStrength;
    .locals 1

    const-class v0, Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/biometrics/shared/model/SensorStrength;
    .locals 1

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/SensorStrength;->$VALUES:[Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    return-object v0
.end method
