.class public Lcom/samsung/android/os/SemDvfsHyPerManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsHyPerManager.java"


# direct methods
.method protected constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    const-class v0, Lcom/samsung/android/os/SemDvfsHyPerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHyPerManager;->LOG_TAG:Ljava/lang/String;

    .line 12
    const-string v0, "HyPer"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHyPerManager;->mName:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public whitelist acquire()V
    .locals 1

    .line 33
    const/16 v0, -0x3e7

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsHyPerManager;->acquire(I)V

    .line 34
    return-void
.end method

.method public whitelist clearDvfsValue()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHyPerManager;->acquireHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    return-void
.end method

.method public whitelist setDvfsValue(I)V
    .locals 3
    .param p1, "value"    # I

    .line 17
    iget v0, p0, Lcom/samsung/android/os/SemDvfsHyPerManager;->mType:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsHyPerManager;->acquireHash:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/os/SemDvfsHyPerManager;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public whitelist setDvfsValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .line 25
    return-void
.end method
