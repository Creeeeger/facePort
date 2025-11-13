.class public final enum Lcom/samsung/android/knox/cmfa/AuthFactorType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/cmfa/AuthFactorType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/cmfa/AuthFactorType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CRITICAL_EVENT_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum DEVICE_INTEGRITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum FACE_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum LAPTOP_PROXIMITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum LOCK_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum ON_BODY_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum PASSIVE_AUTH:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum PROCESS_ACTIVITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TOUCH_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TRUSTED_DEVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TRUSTED_LOCATION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TRUSTED_SERVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum WATCH_ON:Lcom/samsung/android/knox/cmfa/AuthFactorType;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/cmfa/AuthFactorType;
    .locals 13

    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->DEVICE_INTEGRITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v1, Lcom/samsung/android/knox/cmfa/AuthFactorType;->FACE_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v2, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TOUCH_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v3, Lcom/samsung/android/knox/cmfa/AuthFactorType;->WATCH_ON:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v4, Lcom/samsung/android/knox/cmfa/AuthFactorType;->LAPTOP_PROXIMITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v5, Lcom/samsung/android/knox/cmfa/AuthFactorType;->ON_BODY_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v6, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_LOCATION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v7, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_DEVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v8, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_SERVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v9, Lcom/samsung/android/knox/cmfa/AuthFactorType;->PASSIVE_AUTH:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v10, Lcom/samsung/android/knox/cmfa/AuthFactorType;->PROCESS_ACTIVITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v11, Lcom/samsung/android/knox/cmfa/AuthFactorType;->LOCK_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    sget-object v12, Lcom/samsung/android/knox/cmfa/AuthFactorType;->CRITICAL_EVENT_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    filled-new-array/range {v0 .. v12}, [Lcom/samsung/android/knox/cmfa/AuthFactorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "DEVICE_INTEGRITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->DEVICE_INTEGRITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "FACE_DETECTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->FACE_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "TOUCH_DETECTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TOUCH_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "WATCH_ON"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->WATCH_ON:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "LAPTOP_PROXIMITY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->LAPTOP_PROXIMITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "ON_BODY_DETECTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->ON_BODY_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "TRUSTED_LOCATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_LOCATION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "TRUSTED_DEVICE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_DEVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "TRUSTED_SERVICE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_SERVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "PASSIVE_AUTH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->PASSIVE_AUTH:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "PROCESS_ACTIVITY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->PROCESS_ACTIVITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "LOCK_DETECTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->LOCK_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "CRITICAL_EVENT_DETECTION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->CRITICAL_EVENT_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    invoke-static {}, Lcom/samsung/android/knox/cmfa/AuthFactorType;->$values()[Lcom/samsung/android/knox/cmfa/AuthFactorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->$VALUES:[Lcom/samsung/android/knox/cmfa/AuthFactorType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/cmfa/AuthFactorType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/cmfa/AuthFactorType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/cmfa/AuthFactorType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->$VALUES:[Lcom/samsung/android/knox/cmfa/AuthFactorType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/cmfa/AuthFactorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/cmfa/AuthFactorType;

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
