.class public Lcom/samsung/android/knox/container/AuthenticationConfig;
.super Ljava/lang/Object;
.source "AuthenticationConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/AuthenticationConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authenticatorConfig:Landroid/os/Bundle;

.field private authenticatorPkgName:Ljava/lang/String;

.field private authenticatorPkgSignature:Ljava/lang/String;

.field private enforceEnterpriseIdentityLock:Z

.field private enforceRemoteAuthAlways:Z

.field private hideEnterpriseIdentityLock:Z

.field private isConfiguredByMDM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 237
    new-instance v0, Lcom/samsung/android/knox/container/AuthenticationConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/AuthenticationConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/AuthenticationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    .line 195
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    .line 196
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    .line 197
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Z

    .line 206
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    .line 207
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    .line 208
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    .line 209
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    .line 210
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 215
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

    const/4 p2, 0x4

    :try_start_0
    new-array p2, p2, [Z

    const/4 v0, 0x0

    .line 227
    iget-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    aput-boolean v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 229
    iget-object p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object p0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
