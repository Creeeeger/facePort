.class public Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment;
.super Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f142f52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fromPicker"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mTryButton:Lcom/samsung/android/settings/accessibility/base/widget/BodyContainedButton;

    new-instance v2, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayPickerFragment;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
