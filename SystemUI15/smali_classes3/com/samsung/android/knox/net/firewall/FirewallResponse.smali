.class public Lcom/samsung/android/knox/net/firewall/FirewallResponse;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mErrorCode:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public mMessage:Ljava/lang/String;

.field public mResult:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mResult:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mErrorCode:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mResult:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    iput-object p3, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mErrorCode:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getErrorCode()Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mErrorCode:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mResult:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    return-object p0
.end method

.method public setErrorCode(Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mErrorCode:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mResult:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mResult:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->mErrorCode:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
