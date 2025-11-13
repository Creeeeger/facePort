.class public final Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockedOut:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->resetState()V

    return-void
.end method

.method public final onTick(J)V
    .locals 2

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "count"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->access$000(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f130a69

    invoke-static {p0, p2, v0}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    return-void
.end method
