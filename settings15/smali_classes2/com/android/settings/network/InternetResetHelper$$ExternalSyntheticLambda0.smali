.class public final synthetic Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/InternetResetHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/InternetResetHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/InternetResetHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/InternetResetHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "InternetResetHelper"

    const-string v1, "Resume preferences due to connectivity subsystems recovery timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mRecoveryWorker:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sIsRecovering:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper;->resumePreferences()V

    return-void
.end method
