.class public final Lcom/android/settings/accessibility/AccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

.method public final onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

.method public final sendUpdate()V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Lcom/android/settings/accessibility/AccessibilitySettings$1;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
