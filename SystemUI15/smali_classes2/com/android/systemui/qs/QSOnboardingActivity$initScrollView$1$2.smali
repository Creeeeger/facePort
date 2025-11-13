.class public final Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $this_apply:Landroid/widget/ScrollView;

.field public final synthetic this$0:Lcom/android/systemui/qs/QSOnboardingActivity;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;Lcom/android/systemui/qs/QSOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$2;->$this_apply:Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$2;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$2;->$this_apply:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f666666    # 0.9f

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$2;->$this_apply:Landroid/widget/ScrollView;

    const p3, 0x7f0a0987

    invoke-virtual {p2, p3}, Landroid/widget/ScrollView;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$2;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    check-cast p2, Landroid/widget/FrameLayout;

    sget p4, Lcom/android/systemui/qs/QSOnboardingActivity;->$r8$clinit:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070e40

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070e44

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :goto_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int p1, p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p5

    if-eq p4, p5, :cond_1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$2;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f130ce9

    goto :goto_1

    :cond_2
    const p1, 0x7f130e7b

    :goto_1
    iget-object p2, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    iget-object p1, p2, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    if-eqz p1, :cond_3

    iget-object p2, p1, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object p2, p2, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_3

    iget p1, p1, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
