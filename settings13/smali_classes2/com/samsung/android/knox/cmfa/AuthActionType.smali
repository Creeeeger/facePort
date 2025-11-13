.class public final enum Lcom/samsung/android/knox/cmfa/AuthActionType;
.super Ljava/lang/Enum;
.source "AuthActionType.java"

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
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/cmfa/AuthActionType;

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
.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v1, "PHONE_LOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthActionType;->PHONE_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    .line 13
    new-instance v1, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v3, "PHONE_UNLOCK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/cmfa/AuthActionType;->PHONE_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    .line 14
    new-instance v3, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v5, "CONTAINER_LOCK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/cmfa/AuthActionType;->CONTAINER_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    .line 15
    new-instance v5, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v7, "CONTAINER_UNLOCK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/knox/cmfa/AuthActionType;->CONTAINER_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    .line 16
    new-instance v7, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v9, "LAPTOP_LOCK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/knox/cmfa/AuthActionType;->LAPTOP_LOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    .line 17
    new-instance v9, Lcom/samsung/android/knox/cmfa/AuthActionType;

    const-string v11, "LAPTOP_UNLOCK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/knox/cmfa/AuthActionType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/knox/cmfa/AuthActionType;->LAPTOP_UNLOCK:Lcom/samsung/android/knox/cmfa/AuthActionType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/knox/cmfa/AuthActionType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 11
    sput-object v11, Lcom/samsung/android/knox/cmfa/AuthActionType;->$VALUES:[Lcom/samsung/android/knox/cmfa/AuthActionType;

    .line 28
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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/cmfa/AuthActionType;
    .locals 1

    .line 11
    const-class v0, Lcom/samsung/android/knox/cmfa/AuthActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/cmfa/AuthActionType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/cmfa/AuthActionType;
    .locals 1

    .line 11
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

    .line 26
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
