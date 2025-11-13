.class public Lcom/samsung/android/hardware/context/SemContextGyroTemperature;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextGyroTemperature.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextGyroTemperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextGyroTemperature$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->mContext:Landroid/os/Bundle;

    .line 110
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->readFromParcel(Landroid/os/Parcel;)V

    .line 117
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->mContext:Landroid/os/Bundle;

    .line 161
    return-void
.end method


# virtual methods
.method public blacklist getGyroTemperature()D
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->mContext:Landroid/os/Bundle;

    const-string v1, "GyroTemperature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 136
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->mContext:Landroid/os/Bundle;

    .line 137
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 150
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method
