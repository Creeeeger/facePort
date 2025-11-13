.class public Landroid/net/NetworkQuotaInfo;
.super Ljava/lang/Object;
.source "NetworkQuotaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkQuotaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o NO_LIMIT:J = -0x1L


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/NetworkQuotaInfo$1;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo$1;-><init>()V

    sput-object v0, Landroid/net/NetworkQuotaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r getEstimatedBytes()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-r getHardLimitBytes()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public greylist-max-r getSoftLimitBytes()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
