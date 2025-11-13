.class public Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# instance fields
.field public final mAlgorithm:Ljava/lang/String;

.field public final mBlockModes:[Ljava/lang/String;

.field public final mDigests:[Ljava/lang/String;

.field public final mEcCurveName:Ljava/lang/String;

.field public final mIsManaged:Z

.field public final mIsRandomizedEncryptionRequired:Z

.field public final mKeySize:I

.field public final mKeystoreAlias:Ljava/lang/String;

.field public final mOptions:Landroid/os/Bundle;

.field public final mOwnerUid:I

.field public final mPurposes:I

.field public final mResourceId:I

.field public final mSignaturePaddings:[Ljava/lang/String;

.field public final mSourceUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZIILjava/lang/String;IZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeySize:I

    iput p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSourceUid:I

    iput-boolean p4, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsManaged:Z

    iput p5, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mResourceId:I

    iput p6, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOwnerUid:I

    iput-object p7, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    iput p8, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mPurposes:I

    iput-boolean p9, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsRandomizedEncryptionRequired:Z

    iput-object p10, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mEcCurveName:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    iput-object p12, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    iput-object p13, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    iput-object p14, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOptions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getBlockModes()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    return-object p0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    return-object p0
.end method

.method public getEcCurveName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mEcCurveName:Ljava/lang/String;

    return-object p0
.end method

.method public getKeySize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeySize:I

    return p0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public getOwnerUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mOwnerUid:I

    return p0
.end method

.method public getPurposes()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mPurposes:I

    return p0
.end method

.method public getResourceId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mResourceId:I

    return p0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public getSourceUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mSourceUid:I

    return p0
.end method

.method public isManaged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsManaged:Z

    return p0
.end method

.method public isRandomizedEncryptionRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->mIsRandomizedEncryptionRequired:Z

    return p0
.end method
