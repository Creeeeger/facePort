.class Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDeathRecipient"
.end annotation


# instance fields
.field blacklist mAlreadyLinked:Z

.field blacklist mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field final synthetic blacklist this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p2, "x1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    .line 407
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 5

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied : cb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemBioFaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x68

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$102(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/IFaceService;)Lcom/samsung/android/bio/face/IFaceService;

    .line 453
    return-void
.end method

.method blacklist link()V
    .locals 4

    .line 412
    const-string v0, "SemBioFaceManager"

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 415
    iget-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z

    if-nez v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/bio/face/IFaceService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 417
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "link : cb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceDeathRecipient : link failure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist unlink()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 430
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 432
    iput-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAlreadyLinked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_0
    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceDeathRecipient : unlink failure = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 441
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->mAuthCb:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-ne v0, p1, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    .line 444
    :cond_0
    return-void
.end method
