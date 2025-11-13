.class public Lcom/samsung/android/knox/application/ManagedAppInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/ManagedAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAppDisabled:I

.field public mAppInstallCount:I

.field public mAppInstallationDisabled:I

.field public mAppPkg:Ljava/lang/String;

.field public mAppUninstallCount:I

.field public mAppUninstallationDisabled:I

.field public mControlStateDisableCause:I

.field public mControlStateDisableCauseMetadata:Ljava/lang/String;

.field public mIsEnterpriseApp:I

.field public mIsInstallSourceMDM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/application/ManagedAppInfo$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/ManagedAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/ManagedAppInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pkg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,InstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", UninstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppInstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppUninstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
