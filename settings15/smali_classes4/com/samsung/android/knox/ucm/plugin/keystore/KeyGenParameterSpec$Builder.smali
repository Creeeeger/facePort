.class public final Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mAlgorithm:Ljava/lang/String;

.field public mBlockModes:[Ljava/lang/String;

.field public mDigests:[Ljava/lang/String;

.field public mEcCurveName:Ljava/lang/String;

.field public mIsManaged:Z

.field public mIsRandomizedEncryptionRequired:Z

.field public mKeySize:I

.field public mKeystoreAlias:Ljava/lang/String;

.field public mOptions:Landroid/os/Bundle;

.field public mOwnerUid:I

.field public mPurposes:I

.field public mResourceId:I

.field public mSignaturePaddings:[Ljava/lang/String;

.field public mSourceUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    iput p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSourceUid:I

    iput-boolean p4, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsManaged:Z

    iput p5, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mResourceId:I

    iput p6, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOwnerUid:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;
    .locals 16

    move-object/from16 v0, p0

    new-instance v15, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;

    iget-object v1, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iget v2, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    iget v3, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSourceUid:I

    iget-boolean v4, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsManaged:Z

    iget v5, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mResourceId:I

    iget v6, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOwnerUid:I

    iget-object v7, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    iget v8, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    iget-boolean v9, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsRandomizedEncryptionRequired:Z

    iget-object v10, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mEcCurveName:Ljava/lang/String;

    iget-object v11, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    iget-object v12, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    iget-object v13, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    iget-object v14, v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOptions:Landroid/os/Bundle;

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IIZIILjava/lang/String;IZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v15
.end method

.method public setAlgorithm(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public setBlockModes([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    return-object p0
.end method

.method public setDigests([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    return-object p0
.end method

.method public setEcCurveName(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mEcCurveName:Ljava/lang/String;

    return-object p0
.end method

.method public setOptions(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public setPurpose(I)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    return-object p0
.end method

.method public setRandomizedEncryptionRequired(Z)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mIsRandomizedEncryptionRequired:Z

    return-object p0
.end method

.method public setSignaturePaddings([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    return-object p0
.end method
