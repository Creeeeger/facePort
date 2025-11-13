.class public Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;
.super Ljava/lang/Object;
.source "BiometricAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private blacklist mAuthenticationType:I

.field private greylist-max-o mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private blacklist mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

.field private greylist-max-o mUserId:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/biometrics/CryptoObject;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    iput p2, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mAuthenticationType:I

    iput-object p3, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    iput p4, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mUserId:I

    return-void
.end method


# virtual methods
.method public blacklist getAuthenticationType()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mAuthenticationType:I

    return v0
.end method

.method public greylist-max-o getCryptoObject()Landroid/hardware/biometrics/CryptoObject;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    return-object v0
.end method

.method public blacklist getId()Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    return-object v0
.end method

.method public greylist-max-o getUserId()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->mUserId:I

    return v0
.end method
