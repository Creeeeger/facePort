.class public final enum Lcom/samsung/android/knox/SemPersonaState;
.super Ljava/lang/Enum;
.source "SemPersonaState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/SemPersonaState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum greylist ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum greylist ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum greylist ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum greylist CONTAINER_APPS_URGENT_UPDATE:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum greylist CREATING:Lcom/samsung/android/knox/SemPersonaState;

.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/SemPersonaState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum greylist DELETING:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum greylist INVALID:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum greylist LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum greylist LOCKED:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum greylist SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum greylist TERMINUS:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum greylist TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;


# instance fields
.field private greylist knox2_0_state_id:I


# direct methods
.method static constructor greylist <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    .line 19
    new-instance v1, Lcom/samsung/android/knox/SemPersonaState;

    const-string v4, "CREATING"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    .line 23
    new-instance v4, Lcom/samsung/android/knox/SemPersonaState;

    const-string v6, "ACTIVE"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v2}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    .line 27
    new-instance v6, Lcom/samsung/android/knox/SemPersonaState;

    const-string v8, "LOCKED"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 31
    new-instance v8, Lcom/samsung/android/knox/SemPersonaState;

    const-string v10, "SUPER_LOCKED"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v3}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 35
    new-instance v10, Lcom/samsung/android/knox/SemPersonaState;

    const-string v12, "LICENSE_LOCKED"

    const/4 v13, 0x5

    const/16 v14, 0x9

    invoke-direct {v10, v12, v13, v14}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 39
    new-instance v12, Lcom/samsung/android/knox/SemPersonaState;

    const-string v15, "ADMIN_LOCKED"

    const/4 v13, 0x6

    const/16 v11, 0x8

    invoke-direct {v12, v15, v13, v11}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 43
    new-instance v15, Lcom/samsung/android/knox/SemPersonaState;

    const-string v13, "ADMIN_LICENSE_LOCKED"

    const/4 v7, 0x7

    invoke-direct {v15, v13, v7, v3}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 47
    new-instance v13, Lcom/samsung/android/knox/SemPersonaState;

    const-string v5, "TERMINUS"

    invoke-direct {v13, v5, v11, v3}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/knox/SemPersonaState;->TERMINUS:Lcom/samsung/android/knox/SemPersonaState;

    .line 51
    new-instance v5, Lcom/samsung/android/knox/SemPersonaState;

    const-string v11, "DELETING"

    invoke-direct {v5, v11, v14, v9}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    .line 55
    new-instance v11, Lcom/samsung/android/knox/SemPersonaState;

    const-string v14, "TIMA_COMPROMISED"

    const/16 v9, 0xa

    invoke-direct {v11, v14, v9, v7}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    .line 61
    new-instance v14, Lcom/samsung/android/knox/SemPersonaState;

    const-string v9, "CONTAINER_APPS_URGENT_UPDATE"

    const/16 v7, 0xb

    invoke-direct {v14, v9, v7, v3}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/knox/SemPersonaState;->CONTAINER_APPS_URGENT_UPDATE:Lcom/samsung/android/knox/SemPersonaState;

    .line 11
    const/16 v3, 0xc

    new-array v3, v3, [Lcom/samsung/android/knox/SemPersonaState;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v15, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v5, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    aput-object v14, v3, v7

    sput-object v3, Lcom/samsung/android/knox/SemPersonaState;->$VALUES:[Lcom/samsung/android/knox/SemPersonaState;

    .line 97
    new-instance v0, Lcom/samsung/android/knox/SemPersonaState$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/SemPersonaState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "knox2_0_state_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/knox/SemPersonaState;->knox2_0_state_id:I

    .line 68
    iput p3, p0, Lcom/samsung/android/knox/SemPersonaState;->knox2_0_state_id:I

    .line 69
    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaState;

    return-object v0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/SemPersonaState;
    .locals 1

    .line 11
    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->$VALUES:[Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/SemPersonaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/SemPersonaState;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getKnox2_0State()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaState;->knox2_0_state_id:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method
