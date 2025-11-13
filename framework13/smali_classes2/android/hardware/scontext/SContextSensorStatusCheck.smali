.class public Landroid/hardware/scontext/SContextSensorStatusCheck;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextSensorStatusCheck.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextSensorStatusCheck;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 176
    new-instance v0, Landroid/hardware/scontext/SContextSensorStatusCheck$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSensorStatusCheck$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextSensorStatusCheck;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    .line 89
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 95
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextSensorStatusCheck;->readFromParcel(Landroid/os/Parcel;)V

    .line 96
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    .line 170
    return-void
.end method


# virtual methods
.method public blacklist getStatus()I
    .locals 2

    .line 135
    iget-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "Status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getXAxis()I
    .locals 2

    .line 105
    iget-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "XAxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getYAxis()I
    .locals 2

    .line 115
    iget-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "YAxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getZAxis()I
    .locals 2

    .line 125
    iget-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "ZAxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 145
    iput-object p1, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    .line 146
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 159
    iget-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method
