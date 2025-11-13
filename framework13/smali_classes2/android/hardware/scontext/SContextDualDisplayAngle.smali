.class public Landroid/hardware/scontext/SContextDualDisplayAngle;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextDualDisplayAngle.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextDualDisplayAngle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Landroid/hardware/scontext/SContextDualDisplayAngle$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDualDisplayAngle$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextDualDisplayAngle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 42
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextDualDisplayAngle;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    .line 104
    return-void
.end method


# virtual methods
.method public blacklist getDualAngle()S
    .locals 2

    .line 52
    iget-object v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    const-string v1, "Angle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public blacklist getIntensity()S
    .locals 2

    .line 72
    iget-object v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    const-string v1, "Intensity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public blacklist getType()S
    .locals 2

    .line 62
    iget-object v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 83
    iput-object p1, p0, Landroid/hardware/scontext/SContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    .line 84
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget-object v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngle;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method
