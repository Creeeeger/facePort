.class public Landroid/hardware/scontext/SContextEnvironment;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextEnvironment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextEnvironment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Landroid/hardware/scontext/SContextEnvironment$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironment$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEnvironment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    .line 38
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 44
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEnvironment;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method private blacklist getTemperatureHumidityData(I)[D
    .locals 2
    .param p1, "index"    # I

    .line 83
    if-nez p1, :cond_0

    .line 84
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "Temperature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 86
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "Humidity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    .line 124
    return-void
.end method


# virtual methods
.method public blacklist getData(I)[D
    .locals 2
    .param p1, "index"    # I

    .line 67
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "EnvSensorType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEnvironment;->getTemperatureHumidityData(I)[D

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSensorType()I
    .locals 2

    .line 55
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "EnvSensorType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 99
    iput-object p1, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    .line 100
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method
