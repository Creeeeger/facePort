.class public final synthetic Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "dialogActivity"

    iget v0, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

    packed-switch v0, :pswitch_data_0

    sget p1, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mController:Lcom/android/settings/core/BasePreferenceController;

    new-instance v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/core/BasePreferenceController;->getControlType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/core/BasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mController:Lcom/android/settings/core/BasePreferenceController;

    new-instance v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/core/BasePreferenceController;->getControlType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/core/BasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->$r8$clinit:I

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
