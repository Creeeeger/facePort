.class public final synthetic Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    iput p2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->lambda$createShortcutWarningDialog$1$com-android-internal-accessibility-AccessibilityDirectAccessController(ILandroid/content/DialogInterface;I)V

    return-void
.end method
