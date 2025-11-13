.class public Landroid/net/ProxyInfoWrapper;
.super Ljava/lang/Object;
.source "ProxyInfoWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ProxyInfoWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mProxyInfo:Landroid/net/ProxyInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/ProxyInfoWrapper$1;

    invoke-direct {v0}, Landroid/net/ProxyInfoWrapper$1;-><init>()V

    sput-object v0, Landroid/net/ProxyInfoWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/ProxyInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyInfo;

    iput-object v0, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/ProxyInfoWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/ProxyInfoWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProxyInfo()Landroid/net/ProxyInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/ProxyInfoWrapper;->mProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
