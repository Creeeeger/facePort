.class Lcom/android/internal/widget/LockPatternChecker$5;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mThrottleTimeout:I

.field final synthetic blacklist val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;

.field final synthetic blacklist val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic blacklist val$option:I

.field final synthetic blacklist val$userId:I

.field final synthetic blacklist val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    iput p3, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$userId:I

    iput p4, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$option:I

    iput-object p5, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Void;

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    iget v2, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$userId:I

    iget v3, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$option:I

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternChecker$5;->mThrottleTimeout:I

    .line 230
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 221
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist onCancelled()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;->onCancelled()V

    .line 243
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 244
    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 236
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/LockPatternChecker$5;->mThrottleTimeout:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;->onChecked(ZI)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 238
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 221
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
