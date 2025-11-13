.class public final Landroid/hardware/fingerprint/Fingerprint;
.super Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
.source "Fingerprint.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDuplicatedImgCount:I

.field private greylist-max-o mGroupId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/Fingerprint$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mGroupId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mDuplicatedImgCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/fingerprint/Fingerprint-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p5}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;-><init>(Ljava/lang/CharSequence;IJ)V

    iput p2, p0, Landroid/hardware/fingerprint/Fingerprint;->mGroupId:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;IIJI)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p5}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;-><init>(Ljava/lang/CharSequence;IJ)V

    iput p2, p0, Landroid/hardware/fingerprint/Fingerprint;->mGroupId:I

    iput p6, p0, Landroid/hardware/fingerprint/Fingerprint;->mDuplicatedImgCount:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;-><init>(Ljava/lang/CharSequence;IJ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getGroupId()I
    .locals 1

    iget v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mGroupId:I

    return v0
.end method

.method public blacklist semGetDuplicatedImageCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mDuplicatedImgCount:I

    return v0
.end method

.method public blacklist semSetDuplicatedImgCount(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/fingerprint/Fingerprint;->mDuplicatedImgCount:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mDuplicatedImgCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
