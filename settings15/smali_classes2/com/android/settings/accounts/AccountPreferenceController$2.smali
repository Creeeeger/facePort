.class public final Lcom/android/settings/accounts/AccountPreferenceController$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUpdateRunnable:Lcom/android/settings/accounts/AccountPreferenceController$3;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUpdateRunnable:Lcom/android/settings/accounts/AccountPreferenceController$3;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUpdateRunnable:Lcom/android/settings/accounts/AccountPreferenceController$3;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
