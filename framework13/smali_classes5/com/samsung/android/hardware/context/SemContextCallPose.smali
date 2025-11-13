.class public Lcom/samsung/android/hardware/context/SemContextCallPose;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextCallPose.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextCallPose;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LEFT:I = 0x1

.field public static final blacklist RIGHT:I = 0x2

.field public static final blacklist UNKNOWN:I


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCallPose$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCallPose$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextCallPose;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCallPose;->mContext:Landroid/os/Bundle;

    .line 132
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextCallPose;->readFromParcel(Landroid/os/Parcel;)V

    .line 139
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCallPose;->mContext:Landroid/os/Bundle;

    .line 185
    return-void
.end method


# virtual methods
.method public blacklist getPose()I
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCallPose;->mContext:Landroid/os/Bundle;

    const-string v1, "Pose"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 160
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextCallPose;->mContext:Landroid/os/Bundle;

    .line 161
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 174
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCallPose;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 175
    return-void
.end method
