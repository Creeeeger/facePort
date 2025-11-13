.class public final Lcom/samsung/android/settings/cube/index/ControlData$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mControlType:I

.field public mControllerClassName:Ljava/lang/String;

.field public mFragmentClassName:Ljava/lang/String;

.field public mIconUri:Landroid/net/Uri;

.field public mKey:Ljava/lang/String;

.field public mKeywords:Ljava/lang/String;

.field public mRecoverable:Z

.field public mRestoreKey:Ljava/lang/String;

.field public mScreenTitle:Ljava/lang/CharSequence;

.field public mSummary:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# virtual methods
.method public final build()Lcom/samsung/android/settings/cube/index/ControlData;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControllerClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mSummary:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mSummary:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mScreenTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKeywords:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mKeywords:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mIconUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mIconUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mFragmentClassName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mFragmentClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControllerClassName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mControllerClassName:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControlType:I

    iput v1, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mControlType:I

    iget-boolean v1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mRecoverable:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mRecoverable:Z

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mRestoreKey:Ljava/lang/String;

    iput-object p0, v0, Lcom/samsung/android/settings/cube/index/ControlData;->mRestoreKey:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Preference Controller cannot be empty : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", class name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key cannot be empty : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
