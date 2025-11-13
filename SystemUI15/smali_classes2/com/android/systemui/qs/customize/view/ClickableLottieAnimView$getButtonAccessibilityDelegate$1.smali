.class public final Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$getButtonAccessibilityDelegate$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$getButtonAccessibilityDelegate$1;->this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$getButtonAccessibilityDelegate$1;->this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;->animType:Lcom/android/systemui/qs/customize/view/AnimType;

    sget-object v0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$getButtonAccessibilityDelegate$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f130e57

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const p1, 0x7f130e4f

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$getButtonAccessibilityDelegate$1;->this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
