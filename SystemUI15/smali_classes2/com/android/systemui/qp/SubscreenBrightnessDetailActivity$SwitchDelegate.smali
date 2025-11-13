.class public final Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$SwitchDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$SwitchDelegate;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$SwitchDelegate;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Landroidx/appcompat/widget/SwitchCompat;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$SwitchDelegate;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;Landroidx/appcompat/widget/SwitchCompat;)V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$SwitchDelegate;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$SwitchDelegate;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    const v0, 0x7f13132a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    const v0, 0x7f131329    # 1.95496E38f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->mContext:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    const v1, 0x7f131046

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
