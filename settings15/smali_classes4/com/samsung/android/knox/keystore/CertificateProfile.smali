.class public Lcom/samsung/android/knox/keystore/CertificateProfile;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/CertificateProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alias:Ljava/lang/String;

.field public allowAllPackages:Z

.field public allowRawSigning:Z

.field public allowWiFi:Z

.field public isCSRResponse:Z

.field public packageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateProfile$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowRawSigning:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
