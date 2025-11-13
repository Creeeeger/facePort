.class public final Lcom/android/systemui/qs/QSOnboardingActivity$onCreate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSOnboardingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity$onCreate$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity$onCreate$1;->this$0:Lcom/android/systemui/qs/QSOnboardingActivity;

    sget p1, Lcom/android/systemui/qs/QSOnboardingActivity;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x82

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
