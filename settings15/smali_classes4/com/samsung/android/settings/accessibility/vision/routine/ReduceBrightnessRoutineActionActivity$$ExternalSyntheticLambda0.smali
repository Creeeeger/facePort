.class public final synthetic Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOn:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->radioButtonOff:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0c35

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->setEnableSeekBarArea(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f0a0c32

    if-ne p1, v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->toggle()V

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/routine/ReduceBrightnessRoutineActionActivity;->setEnableSeekBarArea(Z)V

    :cond_1
    :goto_0
    return-void
.end method
