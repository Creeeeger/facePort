.class public Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private blacklist mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

.field private blacklist mIris:Lcom/samsung/android/camera/iris/Iris;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;Lcom/samsung/android/camera/iris/Iris;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mIris:Lcom/samsung/android/camera/iris/Iris;

    return-void
.end method


# virtual methods
.method public whitelist getCryptoObject()Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    return-object v0
.end method

.method public blacklist getIris()Lcom/samsung/android/camera/iris/Iris;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mIris:Lcom/samsung/android/camera/iris/Iris;

    return-object v0
.end method

.method public whitelist getToken()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    invoke-virtual {v0}, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->getFidoResultData()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist setToken([B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObject;->setFidoResultData([B)V

    return-void
.end method
