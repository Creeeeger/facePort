.class public final synthetic Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;ILandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iput p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$2:I

    iput-object p3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, 0x1

    const/16 p2, 0x232a

    iget v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$2:I

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    sget v2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->$r8$clinit:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->enableShortcut(Landroid/content/Context;)V

    :goto_0
    iget-object p0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$$ExternalSyntheticLambda2;->f$2:I

    iget-object v2, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mIsDialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getExclusiveTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->isExclusiveTaskEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x232c

    if-eqz v2, :cond_2

    if-ne p0, v3, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showPopupDialog(I)V

    goto :goto_1

    :cond_1
    const/16 p0, 0x232b

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showPopupDialog(I)V

    goto :goto_1

    :cond_2
    if-ne p0, v3, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->handleConfirmServiceEnabled(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->enableShortcut(Landroid/content/Context;)V

    :goto_1
    iget-object p0, v0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
