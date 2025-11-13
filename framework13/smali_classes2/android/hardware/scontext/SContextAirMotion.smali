.class public Landroid/hardware/scontext/SContextAirMotion;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextAirMotion.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextAirMotion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Landroid/hardware/scontext/SContextAirMotion$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAirMotion$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAirMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 113
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 119
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAirMotion;->readFromParcel(Landroid/os/Parcel;)V

    .line 120
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 184
    return-void
.end method


# virtual methods
.method public blacklist getAngle()I
    .locals 2

    .line 139
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Angle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getDirection()I
    .locals 2

    .line 129
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Direction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getSpeed()I
    .locals 2

    .line 149
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Speed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 159
    iput-object p1, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 160
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 173
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method
