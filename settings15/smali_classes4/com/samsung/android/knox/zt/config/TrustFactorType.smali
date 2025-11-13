.class public final enum Lcom/samsung/android/knox/zt/config/TrustFactorType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/zt/config/TrustFactorType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum APP_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum CERT_PROVISION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/zt/config/TrustFactorType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CRITICAL_EVENT_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum DEVICE_INTEGRITY:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum FACE_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum FRAMEWORK_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum LOCK_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum NETWORK_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum ON_BODY_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum PASSIVE_AUTH:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum PHISHING_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum PROCESS_ACTIVITY:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum SYSTEM_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum SYSTEM_SOFTWARE:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum TOUCH_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum TRUSTED_DEVICE:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum TRUSTED_SERVICE:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum USER_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

.field public static final enum WATCH_ON:Lcom/samsung/android/knox/zt/config/TrustFactorType;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/zt/config/TrustFactorType;
    .locals 19

    sget-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->DEVICE_INTEGRITY:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v1, Lcom/samsung/android/knox/zt/config/TrustFactorType;->FACE_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v2, Lcom/samsung/android/knox/zt/config/TrustFactorType;->TOUCH_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v3, Lcom/samsung/android/knox/zt/config/TrustFactorType;->WATCH_ON:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v4, Lcom/samsung/android/knox/zt/config/TrustFactorType;->ON_BODY_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v5, Lcom/samsung/android/knox/zt/config/TrustFactorType;->TRUSTED_DEVICE:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v6, Lcom/samsung/android/knox/zt/config/TrustFactorType;->TRUSTED_SERVICE:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v7, Lcom/samsung/android/knox/zt/config/TrustFactorType;->PASSIVE_AUTH:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v8, Lcom/samsung/android/knox/zt/config/TrustFactorType;->PROCESS_ACTIVITY:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v9, Lcom/samsung/android/knox/zt/config/TrustFactorType;->CRITICAL_EVENT_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v10, Lcom/samsung/android/knox/zt/config/TrustFactorType;->LOCK_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v11, Lcom/samsung/android/knox/zt/config/TrustFactorType;->CERT_PROVISION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v12, Lcom/samsung/android/knox/zt/config/TrustFactorType;->PHISHING_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v13, Lcom/samsung/android/knox/zt/config/TrustFactorType;->SYSTEM_SOFTWARE:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v14, Lcom/samsung/android/knox/zt/config/TrustFactorType;->FRAMEWORK_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v15, Lcom/samsung/android/knox/zt/config/TrustFactorType;->APP_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v16, Lcom/samsung/android/knox/zt/config/TrustFactorType;->SYSTEM_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v17, Lcom/samsung/android/knox/zt/config/TrustFactorType;->NETWORK_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    sget-object v18, Lcom/samsung/android/knox/zt/config/TrustFactorType;->USER_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    filled-new-array/range {v0 .. v18}, [Lcom/samsung/android/knox/zt/config/TrustFactorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "DEVICE_INTEGRITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->DEVICE_INTEGRITY:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "FACE_DETECTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->FACE_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "TOUCH_DETECTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->TOUCH_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "WATCH_ON"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->WATCH_ON:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "ON_BODY_DETECTION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->ON_BODY_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "TRUSTED_DEVICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->TRUSTED_DEVICE:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "TRUSTED_SERVICE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->TRUSTED_SERVICE:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "PASSIVE_AUTH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->PASSIVE_AUTH:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "PROCESS_ACTIVITY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->PROCESS_ACTIVITY:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "CRITICAL_EVENT_DETECTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->CRITICAL_EVENT_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "LOCK_DETECTION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->LOCK_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "CERT_PROVISION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->CERT_PROVISION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "PHISHING_DETECTION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->PHISHING_DETECTION:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "SYSTEM_SOFTWARE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->SYSTEM_SOFTWARE:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "FRAMEWORK_MONITORING"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->FRAMEWORK_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "APP_MONITORING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->APP_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "SYSTEM_MONITORING"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->SYSTEM_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "NETWORK_MONITORING"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->NETWORK_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    const-string v1, "USER_MONITORING"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->USER_MONITORING:Lcom/samsung/android/knox/zt/config/TrustFactorType;

    invoke-static {}, Lcom/samsung/android/knox/zt/config/TrustFactorType;->$values()[Lcom/samsung/android/knox/zt/config/TrustFactorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->$VALUES:[Lcom/samsung/android/knox/zt/config/TrustFactorType;

    new-instance v0, Lcom/samsung/android/knox/zt/config/TrustFactorType$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/zt/config/TrustFactorType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/zt/config/TrustFactorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/zt/config/TrustFactorType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/zt/config/TrustFactorType;->$VALUES:[Lcom/samsung/android/knox/zt/config/TrustFactorType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/zt/config/TrustFactorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/zt/config/TrustFactorType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
