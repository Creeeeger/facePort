.class public final synthetic Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda13;->f$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda13;->f$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mIsDialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method
