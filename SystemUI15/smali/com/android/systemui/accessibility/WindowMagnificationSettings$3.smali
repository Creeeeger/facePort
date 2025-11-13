.class public final Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a067b

    const-string v1, "A11Y3190"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-static {p0, v2}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->-$$Nest$msetMagnifierSize(Lcom/android/systemui/accessibility/WindowMagnificationSettings;I)V

    const-string p0, "A11Y3191"

    invoke-static {v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f0a0677

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->-$$Nest$msetMagnifierSize(Lcom/android/systemui/accessibility/WindowMagnificationSettings;I)V

    const-string p0, "A11Y3192"

    invoke-static {v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const v0, 0x7f0a0676

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->-$$Nest$msetMagnifierSize(Lcom/android/systemui/accessibility/WindowMagnificationSettings;I)V

    const-string p0, "A11Y3193"

    invoke-static {v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f0a0672

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->-$$Nest$msetMagnifierSize(Lcom/android/systemui/accessibility/WindowMagnificationSettings;I)V

    const-string p0, "A11Y3194"

    invoke-static {v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f0a0671

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    check-cast p1, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    iget-object p1, p1, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    iget-object v0, p1, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    iget p1, p1, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    check-cast v0, Lcom/android/systemui/accessibility/Magnification$4;

    iget-object v1, v0, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v3, v1, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    new-instance v4, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p1}, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/Magnification$4;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_SIZE_EDITING_ACTIVATED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    iget-object v0, v1, Lcom/android/systemui/accessibility/Magnification;->mA11yLogger:Lcom/android/systemui/accessibility/AccessibilityLogger;

    iget-object v0, v0, Lcom/android/systemui/accessibility/AccessibilityLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f1300e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->hideSettingPanel(Z)V

    goto :goto_1

    :cond_4
    const v0, 0x7f0a0675

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v0, "accessibility_allow_diagonal_scrolling"

    const/4 v1, -0x2

    invoke-interface {p1, v0, v2, v1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_5

    move p1, v2

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->setDiagonalScrolling(Z)V

    goto :goto_1

    :cond_6
    const v0, 0x7f0a0670

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-virtual {p0, v2}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->hideSettingPanel(Z)V

    :cond_7
    :goto_1
    return-void
.end method
