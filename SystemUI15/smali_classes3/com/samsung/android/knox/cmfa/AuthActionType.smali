.class public final enum Lcom/samsung/android/knox/cmfa/AuthActionType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/cmfa/AuthActionType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/cmfa/AuthActionType;

.field public static final enum CONTAINER_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

.field public static final enum CONTAINER_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/cmfa/AuthActionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LAPTOP_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

.field public static final enum LAPTOP_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

.field public static final enum PHONE_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

.field public static final enum PHONE_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/cmfa/AuthActionType;
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->PHONE_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    sget-object v1, Lcom/samsung/android/knox/cmfa/AuthActionType;->PHONE_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    sget-object v2, Lcom/samsung/android/knox/cmfa/AuthActionType;->CONTAINER_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    sget-object v3, Lcom/samsung/android/knox/cmfa/AuthActionType;->CONTAINER_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    sget-object v4, Lcom/samsung/android/knox/cmfa/AuthActionType;->LAPTOP_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    sget-object v5, Lcom/samsung/android/knox/cmfa/AuthActionType;->LAPTOP_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/knox/cmfa/AuthActionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v1, "PHONE_LOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->PHONE_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v1, "PHONE_UNLOCK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->PHONE_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v1, "CONTAINER_LOCK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->CONTAINER_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v1, "CONTAINER_UNLOCK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->CONTAINER_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v1, "LAPTOP_LOCK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->LAPTOP_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v1, "LAPTOP_UNLOCK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->LAPTOP_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    invoke-static {}, Lcom/samsung/android/knox/cmfa/AuthActionType;->$values()[Lcom/samsung/android/knox/cmfa/AuthActionType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->$VALUES:[Lcom/samsung/android/knox/cmfa/AuthActionType;

    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthActionType$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/cmfa/AuthActionType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/cmfa/AuthActionType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/cmfa/AuthActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/cmfa/AuthActionType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/cmfa/AuthActionType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->$VALUES:[Lcom/samsung/android/knox/cmfa/AuthActionType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/cmfa/AuthActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/cmfa/AuthActionType;

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
