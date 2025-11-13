.class public final Landroid/telephony/gba/GbaAuthRequest;
.super Ljava/lang/Object;
.source "GbaAuthRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/gba/GbaAuthRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private blacklist mAppType:I

.field private blacklist mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

.field private blacklist mForceBootStrapping:Z

.field private blacklist mNafUrl:Landroid/net/Uri;

.field private blacklist mSecurityProtocol:[B

.field private blacklist mSubId:I

.field private blacklist mToken:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/telephony/gba/GbaAuthRequest;->sUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/telephony/gba/GbaAuthRequest$1;

    invoke-direct {v0}, Landroid/telephony/gba/GbaAuthRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/gba/GbaAuthRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILandroid/net/Uri;[BZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/gba/GbaAuthRequest;->mToken:I

    iput p2, p0, Landroid/telephony/gba/GbaAuthRequest;->mSubId:I

    iput p3, p0, Landroid/telephony/gba/GbaAuthRequest;->mAppType:I

    iput-object p4, p0, Landroid/telephony/gba/GbaAuthRequest;->mNafUrl:Landroid/net/Uri;

    iput-object p5, p0, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    iput-object p7, p0, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    iput-boolean p6, p0, Landroid/telephony/gba/GbaAuthRequest;->mForceBootStrapping:Z

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/net/Uri;[BZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    .locals 8

    invoke-static {}, Landroid/telephony/gba/GbaAuthRequest;->nextUniqueToken()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/telephony/gba/GbaAuthRequest;-><init>(IIILandroid/net/Uri;[BZLandroid/telephony/IBootstrapAuthenticationCallback;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/gba/GbaAuthRequest;)V
    .locals 8

    iget v1, p1, Landroid/telephony/gba/GbaAuthRequest;->mToken:I

    iget v2, p1, Landroid/telephony/gba/GbaAuthRequest;->mSubId:I

    iget v3, p1, Landroid/telephony/gba/GbaAuthRequest;->mAppType:I

    iget-object v4, p1, Landroid/telephony/gba/GbaAuthRequest;->mNafUrl:Landroid/net/Uri;

    iget-object v5, p1, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    iget-boolean v6, p1, Landroid/telephony/gba/GbaAuthRequest;->mForceBootStrapping:Z

    iget-object v7, p1, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/gba/GbaAuthRequest;-><init>(IIILandroid/net/Uri;[BZLandroid/telephony/IBootstrapAuthenticationCallback;)V

    return-void
.end method

.method private static blacklist nextUniqueToken()I
    .locals 3

    sget-object v0, Landroid/telephony/gba/GbaAuthRequest;->sUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppType()I
    .locals 1

    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mAppType:I

    return v0
.end method

.method public blacklist getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;
    .locals 1

    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    return-object v0
.end method

.method public blacklist getNafUrl()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mNafUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getSecurityProtocol()[B
    .locals 1

    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    return-object v0
.end method

.method public blacklist getSubId()I
    .locals 1

    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mSubId:I

    return v0
.end method

.method public blacklist getToken()I
    .locals 1

    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mToken:I

    return v0
.end method

.method public blacklist isForceBootStrapping()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mForceBootStrapping:Z

    return v0
.end method

.method public blacklist setCallback(Landroid/telephony/IBootstrapAuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SubId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AppType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", NafUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mNafUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SecurityProtocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ForceBootStrapping:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mForceBootStrapping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CallBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mToken:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mAppType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mNafUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mSecurityProtocol:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-boolean v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mForceBootStrapping:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/gba/GbaAuthRequest;->mCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void
.end method
