.class public final enum Lcom/samsung/android/knox/cmfa/AuthFactorType;
.super Ljava/lang/Enum;
.source "AuthFactorType.java"

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
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/cmfa/AuthFactorType;

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

.field public static final enum ON_BODY_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum PASSIVE_AUTH:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TOUCH_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TRUSTED_DEVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TRUSTED_LOCATION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum TRUSTED_SERVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

.field public static final enum WATCH_ON:Lcom/samsung/android/knox/cmfa/AuthFactorType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 13
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v1, "DEVICE_INTEGRITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->DEVICE_INTEGRITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 14
    new-instance v1, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v3, "FACE_DETECTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/cmfa/AuthFactorType;->FACE_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 15
    new-instance v3, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v5, "TOUCH_DETECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TOUCH_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 16
    new-instance v5, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v7, "WATCH_ON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/knox/cmfa/AuthFactorType;->WATCH_ON:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 17
    new-instance v7, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v9, "LAPTOP_PROXIMITY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/knox/cmfa/AuthFactorType;->LAPTOP_PROXIMITY:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 18
    new-instance v9, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v11, "ON_BODY_DETECTION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/knox/cmfa/AuthFactorType;->ON_BODY_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 19
    new-instance v11, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v13, "TRUSTED_LOCATION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_LOCATION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 20
    new-instance v13, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v15, "TRUSTED_DEVICE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_DEVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 21
    new-instance v15, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v14, "TRUSTED_SERVICE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_SERVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 22
    new-instance v14, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v12, "PASSIVE_AUTH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/knox/cmfa/AuthFactorType;->PASSIVE_AUTH:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 23
    new-instance v12, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const-string v10, "CRITICAL_EVENT_DETECTION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/android/knox/cmfa/AuthFactorType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/knox/cmfa/AuthFactorType;->CRITICAL_EVENT_DETECTION:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/samsung/android/knox/cmfa/AuthFactorType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 12
    sput-object v10, Lcom/samsung/android/knox/cmfa/AuthFactorType;->$VALUES:[Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 34
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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/cmfa/AuthFactorType;
    .locals 1

    .line 12
    const-class v0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/cmfa/AuthFactorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/cmfa/AuthFactorType;
    .locals 1

    .line 12
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

    .line 32
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
