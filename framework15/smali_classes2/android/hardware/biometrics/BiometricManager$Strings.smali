.class public Landroid/hardware/biometrics/BiometricManager$Strings;
.super Ljava/lang/Object;
.source "BiometricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strings"
.end annotation


# instance fields
.field blacklist mAuthenticators:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/hardware/biometrics/IAuthService;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mService:Landroid/hardware/biometrics/IAuthService;

    iput p3, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mAuthenticators:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;ILandroid/hardware/biometrics/BiometricManager$Strings-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/biometrics/BiometricManager$Strings;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/IAuthService;I)V

    return-void
.end method


# virtual methods
.method public whitelist getButtonLabel()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mService:Landroid/hardware/biometrics/IAuthService;

    iget v3, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mAuthenticators:I

    invoke-interface {v2, v0, v1, v3}, Landroid/hardware/biometrics/IAuthService;->getButtonLabel(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist getPromptMessage()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mService:Landroid/hardware/biometrics/IAuthService;

    iget v3, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mAuthenticators:I

    invoke-interface {v2, v0, v1, v3}, Landroid/hardware/biometrics/IAuthService;->getPromptMessage(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist getSettingName()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mService:Landroid/hardware/biometrics/IAuthService;

    iget v3, p0, Landroid/hardware/biometrics/BiometricManager$Strings;->mAuthenticators:I

    invoke-interface {v2, v0, v1, v3}, Landroid/hardware/biometrics/IAuthService;->getSettingName(ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method
