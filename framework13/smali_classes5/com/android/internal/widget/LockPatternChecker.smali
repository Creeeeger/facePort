.class public final Lcom/android/internal/widget/LockPatternChecker;
.super Ljava/lang/Object;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;,
        Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;,
        Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;)Landroid/os/AsyncTask;
    .locals 8
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "option"    # I
    .param p4, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "II",
            "Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 220
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 221
    .local v6, "credentialCopy":Lcom/android/internal/widget/LockscreenCredential;
    new-instance v7, Lcom/android/internal/widget/LockPatternChecker$5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker$5;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;)V

    .line 246
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 247
    return-object v0
.end method

.method public static blacklist checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
    .locals 3
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "I",
            "Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 104
    .local v0, "credentialCopy":Lcom/android/internal/widget/LockscreenCredential;
    new-instance v1, Lcom/android/internal/widget/LockPatternChecker$2;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/internal/widget/LockPatternChecker$2;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    .line 129
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    return-object v1
.end method

.method public static blacklist checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;I[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
    .locals 7
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "remoteLockType"    # I
    .param p2, "password"    # [B
    .param p3, "userId"    # I
    .param p4, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "I[BI",
            "Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 187
    new-instance v6, Lcom/android/internal/widget/LockPatternChecker$4;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker$4;-><init>(Lcom/android/internal/widget/LockPatternUtils;I[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    .line 198
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    return-object v0
.end method

.method public static blacklist verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
    .locals 8
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "II",
            "Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 68
    .local v6, "credentialCopy":Lcom/android/internal/widget/LockscreenCredential;
    new-instance v7, Lcom/android/internal/widget/LockPatternChecker$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V

    .line 86
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/internal/widget/VerifyCredentialResponse;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-object v0
.end method

.method public static blacklist verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
    .locals 8
    .param p0, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "II",
            "Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 150
    .local v6, "credentialCopy":Lcom/android/internal/widget/LockscreenCredential;
    new-instance v7, Lcom/android/internal/widget/LockPatternChecker$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker$3;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V

    .line 168
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/internal/widget/VerifyCredentialResponse;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-object v0
.end method
