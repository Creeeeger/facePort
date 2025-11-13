.class public Lcom/samsung/android/knox/container/AuthenticationConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static AUTHENTICATION_STATUS:Ljava/lang/String; = "auth_status"

.field public static final AUTHENTICATOR_PACKAGE_NAME:Ljava/lang/String; = "servicepackagename"

.field public static final AUTHENTICATOR_PACKAGE_SIGNATURE:Ljava/lang/String; = "servicepackagesignature"

.field public static final BIND_ACTION_AUTHENTICATOR:Ljava/lang/String; = ".genericssoconnection"

.field public static final CHANGE_PASSWORD_ENTERPRISE_IDENTITY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/AuthenticationConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENFORCE_REMOTE_AUTH_ALWAYS:Ljava/lang/String; = "enforceRemoteAuthAlways"

.field public static ENTERPRISEID_OLD_PASSWORD:Ljava/lang/String; = "enterprise_old_password"

.field public static ENTERPRISEID_PASSWORD:Ljava/lang/String; = "enterprise_password"

.field public static ENTERPRISEID_USERNAME:Ljava/lang/String; = "enterprise_username"

.field public static final ERROR_AUTHENTICATOR_PACKAGE_NOT_INSTALLED:I = -0x4

.field public static final ERROR_AUTHENTICATOR_SIGNATURE_MISMATCH:I = -0xd

.field public static final ERROR_INTERNAL_FAIL:I = -0x1

.field public static final ERROR_INVALID_INPUT:I = -0x3

.field public static final ERROR_NETWORK_NOT_AVAILABLE:I = -0xf

.field public static final ERROR_PASSWORD_EXPIRED:I = -0x12

.field public static final ERROR_REMOTE_PROCESSING:I = -0x10

.field public static final ERROR_USER_CANCELLED:I = -0x11

.field public static final ERROR_USER_NOT_AUTHORIZED:I = -0x2

.field public static final FORCE_ENTERPRISE_IDENTITY_LOCK:Ljava/lang/String; = "forceEnterpriseIDLock"

.field public static final HIDE_ENTERPRISE_ID_LOCK:Ljava/lang/String; = "hideEnterpriseIDLock"

.field public static OPERATION_MODE:Ljava/lang/String; = "operation_mode"

.field public static final SAMSUNG_KERBEROS_AUTHENTICATOR:Ljava/lang/String; = "com.sec.android.service.singlesignon"

.field public static final SETUP_ENTERPRISE_IDENTITY:I = 0x2

.field public static final SUCCESS:I = 0x0

.field public static final UNLOCK_ENTERPRISE_IDENTITY:I = 0x3


# instance fields
.field public authenticatorConfig:Landroid/os/Bundle;

.field public authenticatorPkgName:Ljava/lang/String;

.field public authenticatorPkgSignature:Ljava/lang/String;

.field public enforceEnterpriseIdentityLock:Z

.field public enforceRemoteAuthAlways:Z

.field public hideEnterpriseIdentityLock:Z

.field public isConfiguredByMDM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/AuthenticationConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/AuthenticationConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/AuthenticationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    iput-boolean p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    iput-object p4, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    iput-boolean p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    iput-object p4, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    iput-boolean p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    iput-boolean p4, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    iput-object p5, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(ZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    iput-boolean p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    iput-boolean p4, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    iput-object p5, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAuthenticatorConfig()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-object p0
.end method

.method public getAuthenticatorPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthenticatorPkgSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    return-object p0
.end method

.method public getEnforceEnterpriseIdentityLock()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    return p0
.end method

.method public getEnforceRemoteAuthAlways()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    return p0
.end method

.method public getHideEnterpriseIdentityLock()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    return p0
.end method

.method public isConfiguredByMDM()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAuthenticatorConfig(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    return-void
.end method

.method public setAuthenticatorPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    return-void
.end method

.method public setAuthenticatorPkgSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    return-void
.end method

.method public setConfiguredByMDM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    return-void
.end method

.method public setEnforceRemoteAuthAlways(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    return-void
.end method

.method public setForceEnterpriseIdentityLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    return-void
.end method

.method public setHideEnterpriseIdentityLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    :try_start_0
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM:Z

    const/4 v3, 0x4

    new-array v3, v3, [Z

    const/4 v4, 0x0

    aput-boolean p2, v3, v4

    const/4 p2, 0x1

    aput-boolean v0, v3, p2

    const/4 p2, 0x2

    aput-boolean v1, v3, p2

    const/4 p2, 0x3

    aput-boolean v2, v3, p2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/container/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
