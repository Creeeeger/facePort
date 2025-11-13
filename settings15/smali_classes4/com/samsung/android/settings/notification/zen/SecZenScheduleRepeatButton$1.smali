.class public final Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

.field public final synthetic val$dayOfWeek:I

.field public final synthetic val$stringDescriptionId:[I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;[II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$1;->val$stringDescriptionId:[I

    iput p3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$1;->val$dayOfWeek:I

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$1;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$1;->val$stringDescriptionId:[I

    iget p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$1;->val$dayOfWeek:I

    aget p0, v0, p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
