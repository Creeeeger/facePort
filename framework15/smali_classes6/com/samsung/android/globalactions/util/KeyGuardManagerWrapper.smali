.class public Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;
.super Ljava/lang/Object;
.source "KeyGuardManagerWrapper.java"


# static fields
.field private static final blacklist ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final blacklist TAG:Ljava/lang/String; = "KeyguardManagerWrapper"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsRegistered:Z

.field private final blacklist mKeyguardManager:Landroid/app/KeyguardManager;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public blacklist isCurrentUserSecure()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isSecureKeyguard()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setPendingIntentAfterUnlock(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "KeyguardManagerWrapper"

    const-string v2, "setPendingIntentAfterUnlock"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "afterKeyguardGone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "dismissType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method public blacklist setPendingIntentAfterUnlockOnCover(Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "KeyguardManagerWrapper"

    const-string v2, "setPendingIntentAfterUnlockOnCover"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "runOnCover"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "ignoreKeyguardState"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v4, "afterKeyguardGone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "dismissType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method public blacklist setRegisterState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->mIsRegistered:Z

    return-void
.end method
