.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$800(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetState()V

    return-void
.end method

.method public final onTick(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    div-int/lit8 p2, p1, 0x3c

    div-int/lit8 v0, p2, 0x3c

    const-string v1, "onTick() secondsRemaining: "

    const-string v2, "KeyguardKnoxGuardView"

    invoke-static {p1, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xe10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le p1, v1, :cond_1

    if-le v0, v2, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget p2, p2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mAttemptCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f130914

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget p2, p2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mAttemptCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f130913

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x3c

    if-le p1, v0, :cond_3

    if-le p2, v2, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget v0, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mAttemptCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f130916

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget p2, p2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mAttemptCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f130915

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-lez p1, :cond_5

    if-le p1, v2, :cond_4

    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget v0, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mAttemptCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f130918

    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget p2, p2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mAttemptCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f130917

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method
