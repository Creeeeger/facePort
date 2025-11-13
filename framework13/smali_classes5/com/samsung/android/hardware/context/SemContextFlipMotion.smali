.class public Lcom/samsung/android/hardware/context/SemContextFlipMotion;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextFlipMotion.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextFlipMotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATUS_BACK:I = 0x2

.field public static final blacklist STATUS_FRONT:I = 0x1

.field public static final blacklist STATUS_RESET:I = 0x4

.field public static final blacklist STATUS_START:I = 0x3

.field public static final blacklist STATUS_UNKNOWN:I


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlipMotion$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlipMotion$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;->mContext:Landroid/os/Bundle;

    .line 156
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextFlipMotion;->readFromParcel(Landroid/os/Parcel;)V

    .line 163
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;->mContext:Landroid/os/Bundle;

    .line 214
    return-void
.end method


# virtual methods
.method public blacklist getStatus()I
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 189
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;->mContext:Landroid/os/Bundle;

    .line 190
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 203
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 204
    return-void
.end method
