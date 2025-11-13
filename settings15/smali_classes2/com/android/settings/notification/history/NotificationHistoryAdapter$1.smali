.class public final Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

.field public final synthetic val$hn:Landroid/app/NotificationHistory$HistoricalNotification;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    iput-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->val$hn:Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141ac5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result p1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    iget-object p1, p1, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    iget-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->val$hn:Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->onItemSwipeDeleted(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
