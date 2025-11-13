.class public Lcom/samsung/android/knox/zt/service/ParcelableProfile;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/zt/service/ParcelableProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mChallengePassword:Ljava/lang/String;

.field public mClientIdentifierType:I

.field public mClientIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyAlias:Ljava/lang/String;

.field public mKeyExtendedPurposes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyOwner:I

.field public mKeyProvider:Ljava/lang/String;

.field public mProtocol:Ljava/lang/String;

.field public mProvisionType:Ljava/lang/String;

.field public mRootCA:Ljava/lang/String;

.field public mServerHost:Ljava/lang/String;

.field public mServerPath:Ljava/lang/String;

.field public mServerPort:Ljava/lang/String;

.field public mSubject:Landroid/os/Bundle;

.field public mSubjectAltName:Landroid/os/Bundle;

.field public mSystemKeyPurposes:I

.field public mSystemKeySize:I

.field public mSystemKeyType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/zt/service/ParcelableProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    move-object v1, p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    move-object v1, p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    move-object v1, p4

    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    move-object v1, p6

    invoke-virtual {p0, p6}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    move-object v1, p7

    invoke-virtual {p0, p7}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    move-object v1, p8

    invoke-virtual {p0, p8}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    move-object v1, p9

    invoke-virtual {p0, p9}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    move-object v1, p10

    invoke-virtual {p0, p10}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    move-object v1, p11

    invoke-virtual {p0, p11}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    move-object v1, p12

    invoke-virtual {p0, p12}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    move-object v1, p13

    invoke-virtual {p0, p13}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    move-object/from16 v1, p15

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    move-object/from16 v1, p16

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    move/from16 v1, p17

    iput v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    move/from16 v1, p18

    iput v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getChallengePassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    return-object p0
.end method

.method public getClientIdentifierType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    return p0
.end method

.method public getClientIdentifiers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    return-object p0
.end method

.method public getKeyAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyExtendedPurposes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    return-object p0
.end method

.method public getKeyOwner()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    return p0
.end method

.method public getKeyProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getProvisionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    return-object p0
.end method

.method public getRootCA()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    return-object p0
.end method

.method public getServerHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    return-object p0
.end method

.method public getServerPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    return-object p0
.end method

.method public getServerPort()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    return-object p0
.end method

.method public getSubject()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    return-object p0
.end method

.method public getSubjectAltName()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    return-object p0
.end method

.method public getSystemKeyPurposes()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    return p0
.end method

.method public getSystemKeySize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

    return p0
.end method

.method public getSystemKeyType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    return-object p0
.end method

.method public final nonEmptyOf(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    return-object p1
.end method

.method public final nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public final nonEmptyOf(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
