.class public final Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$onViewAttachedToWindow$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$onViewAttachedToWindow$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$onViewAttachedToWindow$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessContainer:Lcom/android/systemui/qs/SecQSSwitchPreference;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f0a0d34

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    const-string v1, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    move-object p1, v1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$onViewAttachedToWindow$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;

    iget-object v2, v2, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$onViewAttachedToWindow$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;

    iget-object v2, v2, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_6
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f13132a

    goto :goto_3

    :cond_7
    const v0, 0x7f131329    # 1.95496E38f

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$onViewAttachedToWindow$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-class v0, Landroid/widget/Switch;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Switch"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
