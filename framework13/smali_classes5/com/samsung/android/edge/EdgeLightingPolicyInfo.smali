.class public final Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CATEGORY_BLACK:I = 0x2

.field public static final blacklist CATEGORY_WHITE:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/edge/EdgeLightingPolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RANGE_MASK:I = 0xffff

.field public static final blacklist RANGE_NOTIFICATION:I = 0x1

.field public static final blacklist RANGE_PRIVATE_MASK:I = 0xff00

.field public static final blacklist RANGE_PRIVATE_NOTIFICATION_AFTER_WAKEUP:I = 0x400

.field public static final blacklist RANGE_PRIVATE_NOT_HUN_BUT_NOTIFICATION:I = 0x100

.field public static final blacklist RANGE_PRIVATE_TOAST:I = 0x200

.field public static final blacklist RANGE_PUBLIC_ALL:I = 0x7

.field public static final blacklist RANGE_PUBLIC_MASK:I = 0xff

.field public static final blacklist RANGE_RESERVED_FLAG:I = 0x10000

.field public static final blacklist RANGE_WAKE_LOCK:I = 0x4

.field public static final blacklist RANGE_WAKE_UP:I = 0x2


# instance fields
.field public final blacklist category:I

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist range:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->packageName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "category"    # I
    .param p3, "range"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->packageName:Ljava/lang/String;

    .line 63
    iput p2, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    .line 64
    const v0, 0xffff

    and-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EdgeLightingPolicyInfo{packageName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", category= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", range= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
