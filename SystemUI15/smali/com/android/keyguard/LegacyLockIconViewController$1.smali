.class public final Lcom/android/keyguard/LegacyLockIconViewController$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final synthetic this$0:Lcom/android/keyguard/LegacyLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/LegacyLockIconViewController;)V
    .locals 3

    iput-object p1, p0, Lcom/android/keyguard/LegacyLockIconViewController$1;->this$0:Lcom/android/keyguard/LegacyLockIconViewController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p1, Lcom/android/keyguard/LegacyLockIconViewController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f13004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController$1;->mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p1, p1, Lcom/android/keyguard/LegacyLockIconViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f130096

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController$1;->mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/android/keyguard/LegacyLockIconViewController$1;->this$0:Lcom/android/keyguard/LegacyLockIconViewController;

    iget-boolean v0, p1, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBouncerShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/android/keyguard/LegacyLockIconViewController;->mShowUnlockIcon:Z

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/keyguard/LegacyLockIconViewController;->mShowLockIcon:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController$1;->mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    :cond_1
    iget-boolean p1, p1, Lcom/android/keyguard/LegacyLockIconViewController;->mShowUnlockIcon:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController$1;->mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    :goto_1
    return-void
.end method
