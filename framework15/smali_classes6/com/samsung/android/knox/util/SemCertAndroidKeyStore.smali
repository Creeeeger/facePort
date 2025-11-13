.class public Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;
.super Ljava/lang/Object;
.source "SemCertAndroidKeyStore.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation
.end field


# instance fields
.field public whitelist certs:[Ljava/security/cert/Certificate;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;->certs:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;->certs:[Ljava/security/cert/Certificate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
