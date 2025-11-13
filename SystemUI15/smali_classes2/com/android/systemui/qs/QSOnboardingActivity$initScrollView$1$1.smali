.class public final Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSOnboardingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    sget p1, Lcom/android/systemui/qs/QSOnboardingActivity;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f130ce9

    goto :goto_0

    :cond_0
    const p1, 0x7f130e7b

    :goto_0
    iget-object p2, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    iget-object p1, p2, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object p2, p2, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    iget p1, p1, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
