.class public final Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;

.field public final synthetic val$circleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$3;->val$circleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$3;->val$circleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mState:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const p2, 0x7f142f5a

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f142f5c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f142f5b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
