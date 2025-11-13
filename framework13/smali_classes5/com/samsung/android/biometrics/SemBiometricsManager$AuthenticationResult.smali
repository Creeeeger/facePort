.class public Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/SemBiometricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private blacklist mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;)V
    .locals 0
    .param p1, "crypto"    # Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    .line 442
    return-void
.end method


# virtual methods
.method public whitelist getCryptoObject()Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    return-object v0
.end method
