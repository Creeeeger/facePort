.class Lcom/samsung/android/bio/face/SemBioFaceManager$2;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field final synthetic blacklist val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 921
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 924
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 925
    return-void
.end method
