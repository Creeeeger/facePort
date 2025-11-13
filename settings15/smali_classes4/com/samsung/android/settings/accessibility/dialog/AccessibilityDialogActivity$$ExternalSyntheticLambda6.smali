.class public final synthetic Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

    sget p1, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
