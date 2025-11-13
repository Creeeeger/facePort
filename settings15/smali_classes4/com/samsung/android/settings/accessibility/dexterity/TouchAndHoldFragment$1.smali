.class public final Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const-string p1, "long_press_timeout"

    const v0, 0x7f0a10ef

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mVeryShortRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p2, 0x12c

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0e33

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mShortRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p2, 0x1f4

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0950

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mMediumRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p2, 0x3e8

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const v0, 0x7f0a08fe

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mLongRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p2, 0x5dc

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const p1, 0x7f0a0472

    if-ne p2, p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldFragment;->mCustomRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method
