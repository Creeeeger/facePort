.class Lcom/android/internal/widget/LockPatternChecker$4;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;I[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
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
.field final synthetic blacklist val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

.field final synthetic blacklist val$password:[B

.field final synthetic blacklist val$remoteLockType:I

.field final synthetic blacklist val$userId:I

.field final synthetic blacklist val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils;I[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput p2, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$remoteLockType:I

    iput-object p3, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$password:[B

    iput p4, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$userId:I

    iput-object p5, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Void;

    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$remoteLockType:I

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$password:[B

    iget v3, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$userId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkRemoteLockPassword(I[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onChecked(ZI)V

    .line 196
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 187
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
