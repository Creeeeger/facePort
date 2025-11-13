.class public Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private blacklist mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

.field private blacklist mIris:Lcom/samsung/android/camera/iris/Iris;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Lcom/samsung/android/camera/iris/Iris;)V
    .locals 0
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "iris"    # Lcom/samsung/android/camera/iris/Iris;

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .line 656
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;->mIris:Lcom/samsung/android/camera/iris/Iris;

    .line 657
    return-void
.end method


# virtual methods
.method public blacklist getCryptoObject()Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    return-object v0
.end method

.method public blacklist getIris()Lcom/samsung/android/camera/iris/Iris;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;->mIris:Lcom/samsung/android/camera/iris/Iris;

    return-object v0
.end method
