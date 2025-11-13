.class public Lcom/samsung/android/knox/keystore/SCEPProfile;
.super Lcom/samsung/android/knox/keystore/EnrollmentProfile;
.source "SCEPProfile.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public challengeLength:I

.field public challengePassword:[B

.field public scepProfileName:Ljava/lang/String;

.field public scepUrl:Ljava/lang/String;

.field public subjectAlternativeName:Ljava/lang/String;

.field public subjectName:Ljava/lang/String;

.field public validitytimeForChallenge:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/EnrollmentProfile;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/EnrollmentProfile;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->profileType:Ljava/lang/String;

    .line 121
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->scepUrl:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->scepProfileName:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->challengeLength:I

    .line 124
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->challengePassword:[B

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->subjectName:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->validitytimeForChallenge:J

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keySize:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->subjectAlternativeName:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->hashAlgorithmType:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->csrExtra:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string p2, "SCEP"

    .line 183
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->scepUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->scepProfileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->challengePassword:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->challengePassword:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 188
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->subjectName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-wide v0, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->validitytimeForChallenge:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget p2, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keySize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->subjectAlternativeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 196
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->hashAlgorithmType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object p0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->csrExtra:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
