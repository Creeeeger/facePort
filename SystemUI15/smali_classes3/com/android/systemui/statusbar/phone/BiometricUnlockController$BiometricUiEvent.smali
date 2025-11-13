.class public final enum Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final enum BIOMETRIC_BOUNCER_SHOWN:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final ERROR_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

.field public static final FAILURE_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

.field public static final enum STARTED_WAKING_UP:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

.field public static final SUCCESS_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v11, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v0, 0x18c

    const-string v1, "BIOMETRIC_FINGERPRINT_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v11, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v0, 0x18d

    const-string v1, "BIOMETRIC_FINGERPRINT_FAILURE"

    const/4 v2, 0x1

    invoke-direct {v12, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v0, 0x18e

    const-string v1, "BIOMETRIC_FINGERPRINT_ERROR"

    const/4 v2, 0x2

    invoke-direct {v13, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v0, 0x18f

    const-string v1, "BIOMETRIC_FACE_SUCCESS"

    const/4 v2, 0x3

    invoke-direct {v14, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v0, 0x190

    const-string v1, "BIOMETRIC_FACE_FAILURE"

    const/4 v2, 0x4

    invoke-direct {v15, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v0, 0x191

    const-string v1, "BIOMETRIC_FACE_ERROR"

    const/4 v2, 0x5

    invoke-direct {v10, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v0, 0x192

    const-string v1, "BIOMETRIC_IRIS_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v9, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v0, 0x193

    const-string v1, "BIOMETRIC_IRIS_FAILURE"

    const/4 v2, 0x7

    invoke-direct {v8, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v0, 0x194

    const-string v1, "BIOMETRIC_IRIS_ERROR"

    const/16 v2, 0x8

    invoke-direct {v7, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v0, 0x394

    const-string v1, "BIOMETRIC_BOUNCER_SHOWN"

    const/16 v2, 0x9

    invoke-direct {v6, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_BOUNCER_SHOWN:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    new-instance v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    const/16 v0, 0x562

    const-string v1, "STARTED_WAKING_UP"

    const/16 v2, 0xa

    invoke-direct {v5, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->STARTED_WAKING_UP:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    move-object v0, v11

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v16, v5

    move-object v5, v10

    move-object/from16 v17, v6

    move-object v6, v9

    move-object/from16 v18, v7

    move-object v7, v8

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    move-object/from16 v20, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v16

    filled-new-array/range {v0 .. v10}, [Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->$VALUES:[Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    sget-object v9, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v10, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v16, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    move-object v3, v9

    move-object v4, v13

    move-object v5, v10

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    invoke-static/range {v3 .. v8}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->ERROR_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    move-object v0, v9

    move-object v1, v11

    move-object v2, v10

    move-object v3, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v20

    invoke-static/range {v0 .. v5}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->SUCCESS_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    move-object v3, v9

    move-object v4, v12

    move-object v5, v10

    move-object v6, v15

    move-object/from16 v8, v19

    invoke-static/range {v3 .. v8}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->FAILURE_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->$VALUES:[Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->mId:I

    return p0
.end method
