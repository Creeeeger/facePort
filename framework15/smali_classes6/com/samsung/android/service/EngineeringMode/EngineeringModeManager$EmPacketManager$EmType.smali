.class Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager$EmType;
.super Ljava/lang/Object;
.source "EngineeringModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmType"
.end annotation


# static fields
.field public static final blacklist DEVI_DID:I = 0x2

.field public static final blacklist DEVI_IMEI:I = 0x3

.field public static final blacklist DEVI_MODEL_NAME:I = 0x1

.field public static final blacklist GRDB_NO_DUPLICATE:I = 0x1

.field public static final blacklist INTE_SERVER_CERT:I = 0x2

.field public static final blacklist INTE_SIGNATURE:I = 0x1

.field public static final blacklist ISSU_IP:I = 0x1002

.field public static final blacklist ISSU_MAC:I = 0x1003

.field public static final blacklist ISSU_NONCE:I = 0x3

.field public static final blacklist ISSU_OTP:I = 0x2

.field public static final blacklist ISSU_SINGLE_ID:I = 0x1

.field public static final blacklist ISSU_SYSTEM_ID:I = 0x1001

.field public static final blacklist MODB_DEVICE_INFO:I = 0x1

.field public static final blacklist MODB_EXCLUSIVE:I = 0x5

.field public static final blacklist MODB_HIDDEN:I = 0x2

.field public static final blacklist MODB_MTUC:I = 0x3

.field public static final blacklist MODB_MTUC_VALUE:I = 0x4

.field public static final blacklist MODB_USED_ONCE:I = 0x6

.field public static final blacklist TOKE_DEVICE_INFO:I = 0x2

.field public static final blacklist TOKE_ID:I = 0x1

.field public static final blacklist TOKE_NUM_DEVICES:I = 0x3

.field public static final blacklist VALI_EXPIRY_DATE:I = 0x2

.field public static final blacklist VALI_ISSUED_DATE:I = 0x1


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
