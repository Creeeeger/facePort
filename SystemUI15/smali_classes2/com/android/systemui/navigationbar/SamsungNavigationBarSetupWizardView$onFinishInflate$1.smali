.class public final Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$1;->this$0:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$1;->this$0:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    return-void
.end method
