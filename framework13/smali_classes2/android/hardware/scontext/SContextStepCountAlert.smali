.class public Landroid/hardware/scontext/SContextStepCountAlert;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextStepCountAlert.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextStepCountAlert;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlert$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlert$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextStepCountAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 86
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 92
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextStepCountAlert;->readFromParcel(Landroid/os/Parcel;)V

    .line 93
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 141
    return-void
.end method


# virtual methods
.method public blacklist getAlert()I
    .locals 2

    .line 102
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    return v1

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 116
    iput-object p1, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 117
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method
