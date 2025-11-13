.class public abstract Lcom/samsung/android/knox/keystore/EnrollmentProfile;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/EnrollmentProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public certificateAlias:Ljava/lang/String;

.field public credentialStorageBundle:Landroid/os/Bundle;

.field public csrExtra:Landroid/os/Bundle;

.field public hashAlgorithmType:Ljava/lang/String;

.field public keyPairAlgorithm:Ljava/lang/String;

.field public keySize:I

.field public keystoreType:Ljava/lang/String;

.field public profileType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/EnrollmentProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->csrExtra:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getCertificateAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyPairAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getKeySize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keySize:I

    return p0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getProfileType()Ljava/lang/String;
.end method

.method public setCertificateAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    return-void
.end method

.method public setKeyPairAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setKeySize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keySize:I

    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    return-void
.end method
