.class public final Lcom/android/keyguard/KeyguardInputViewController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardInputViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->getPrevCredentialSubInfoText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    invoke-virtual {v3}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07055d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v4, v1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f130d5f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/keyguard/KeyguardInputViewController$2$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardInputViewController$2$1;-><init>(Lcom/android/keyguard/KeyguardInputViewController$2;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    return-void
.end method
