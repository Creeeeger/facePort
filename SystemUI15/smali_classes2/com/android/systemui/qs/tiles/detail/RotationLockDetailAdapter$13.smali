.class public final Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

.field public final synthetic val$button:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;->val$button:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;->val$title:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;->val$button:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f13102c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;->val$button:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f13132a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f131329    # 1.95496E38f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;->val$title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Switch"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
