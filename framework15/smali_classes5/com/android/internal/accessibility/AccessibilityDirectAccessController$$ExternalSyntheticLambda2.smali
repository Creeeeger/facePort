.class public final synthetic Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
.method public final whitelist onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->$r8$lambda$xCBEJdCFTRvDGJ6fJwmLJKH62w8(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;ILandroid/content/DialogInterface;)V

    return-void
.end method
