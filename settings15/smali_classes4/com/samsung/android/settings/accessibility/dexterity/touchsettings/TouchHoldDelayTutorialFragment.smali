.class public Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayTutorialFragment;
.super Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mButtonClickListener:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayTutorialFragment$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayTutorialFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayTutorialFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayTutorialFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayTutorialFragment;->mButtonClickListener:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayTutorialFragment$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138d

    return p0
.end method

.method public final getSharedPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "touch_hold_delay_tutorial"

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const p1, 0x7f142f58

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->setDescription(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayTutorialFragment;->mButtonClickListener:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayTutorialFragment$$ExternalSyntheticLambda0;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mSetButton:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mSetButton:Landroid/widget/Button;

    const p2, 0x7f142f57

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f080dc4

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsTutorialFragment;->mImageView:Landroid/widget/ImageView;

    const p2, 0x7f142f60

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
