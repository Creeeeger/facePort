.class public abstract Lcom/android/keyguard/BaseSecPasswordTextView;
.super Lcom/android/systemui/widget/SystemUIEditText;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mMaxLength:I

.field public mShowPassword:Z

.field public mText:Ljava/lang/String;

.field public mUserActivityListener:Lcom/android/keyguard/BaseSecPasswordTextView$UserActivityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mShowPassword:Z

    const/16 p1, 0x100

    iput p1, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mMaxLength:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mShowPassword:Z

    const/16 p1, 0x100

    iput p1, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public final deleteLastChar()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/BaseSecPasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/BaseSecPasswordTextView;->onDelete(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/android/keyguard/BaseSecPasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/BaseSecPasswordTextView;->onUserActivity()V

    return-void
.end method

.method public getTextCharsSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTransformedText()Ljava/lang/CharSequence;
    .locals 1

    const/16 v0, 0x2022

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onDelete(I)V
    .locals 0

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/BaseSecPasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    const/16 p0, 0x10

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    return-void
.end method

.method public onReset(Z)V
    .locals 0

    return-void
.end method

.method public onUserActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mUserActivityListener:Lcom/android/keyguard/BaseSecPasswordTextView$UserActivityListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/keyguard/BaseSecPasswordTextView$UserActivityListener;->onUserActivity()V

    :cond_0
    return-void
.end method

.method public final reset(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/BaseSecPasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    iput-object v1, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/BaseSecPasswordTextView;->onReset(Z)V

    if-eqz p2, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2, p1, p2}, Lcom/android/keyguard/BaseSecPasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public final sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/BaseSecPasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method
