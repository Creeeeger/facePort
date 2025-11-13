.class public Landroid/hardware/scontext/SContextPhoneStatusMonitor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextPhoneStatusMonitor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextPhoneStatusMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextPhoneStatusMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPhoneStatusMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist getLcdDirection()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "lcddirect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getProximity()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "embower"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getTimeStamp()J
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isInSuroundingEnvironment()Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "lcdOffRecommend"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
