.class public final Lcom/samsung/android/settings/actions/ActionData$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActionType:I

.field public mFragmentClassName:Ljava/lang/String;

.field public mIconResource:I

.field public mKey:Ljava/lang/String;

.field public mKeywords:Ljava/lang/String;

.field public mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

.field public mPrefControllerClassName:Ljava/lang/String;

.field public mRecoverable:Z

.field public mRestoreKey:Ljava/lang/String;

.field public mScreenTitle:Ljava/lang/CharSequence;

.field public mSummary:Ljava/lang/String;

.field public mTargetFragment:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# virtual methods
.method public final build()Lcom/samsung/android/settings/actions/ActionData;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/actions/ActionData;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/actions/ActionData;-><init>(Lcom/samsung/android/settings/actions/ActionData$Builder;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Preference Controller cannot be empty : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", class name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key cannot be empty : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
