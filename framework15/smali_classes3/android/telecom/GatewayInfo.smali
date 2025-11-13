.class public Landroid/telecom/GatewayInfo;
.super Ljava/lang/Object;
.source "GatewayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/GatewayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mGatewayAddress:Landroid/net/Uri;

.field private final greylist-max-o mGatewayProviderPackageName:Ljava/lang/String;

.field private final greylist-max-o mOriginalAddress:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/GatewayInfo$1;

    invoke-direct {v0}, Landroid/telecom/GatewayInfo$1;-><init>()V

    sput-object v0, Landroid/telecom/GatewayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    iput-object p3, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGatewayAddress()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getGatewayProviderPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOriginalAddress()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    return-void
.end method
