.class public final Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIllustrationView:Landroid/view/View;

.field public final mIndicatorIcon:Landroid/widget/ImageView;

.field public final mInstruction:Ljava/lang/CharSequence;

.field public final mTitle:Ljava/lang/CharSequence;

.field public final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mType:I

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mTitle:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mIllustrationView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mIndicatorIcon:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mInstruction:Ljava/lang/CharSequence;

    const p0, 0x7f0a07cd

    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p4, 0x11

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, 0x7f0a07c4

    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
