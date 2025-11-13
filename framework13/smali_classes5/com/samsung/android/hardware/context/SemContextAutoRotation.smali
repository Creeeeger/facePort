.class public Lcom/samsung/android/hardware/context/SemContextAutoRotation;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextAutoRotation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "13.0"
.end annotation


# static fields
.field public static final whitelist ANGLE_0:I = 0x0

.field public static final whitelist ANGLE_180:I = 0x2

.field public static final whitelist ANGLE_270:I = 0x3

.field public static final whitelist ANGLE_90:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextAutoRotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_TYPE_MOBILE:I = 0x0

.field public static final blacklist DEVICE_TYPE_TABLET:I = 0x2

.field public static final blacklist DEVICE_TYPE_WIDE_TABLET:I = 0x4

.field public static final whitelist NONE:I = -0x1


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotation$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->mContext:Landroid/os/Bundle;

    .line 171
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 176
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 177
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->readFromParcel(Landroid/os/Parcel;)V

    .line 178
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->mContext:Landroid/os/Bundle;

    .line 226
    return-void
.end method


# virtual methods
.method public whitelist getAngle()I
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->mContext:Landroid/os/Bundle;

    const-string v1, "Angle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 201
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->mContext:Landroid/os/Bundle;

    .line 202
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 215
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 216
    return-void
.end method
