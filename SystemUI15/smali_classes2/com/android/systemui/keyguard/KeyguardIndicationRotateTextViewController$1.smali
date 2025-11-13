.class public final Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;->this$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;->this$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->access$000(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mMaxAlpha:F

    mul-float/2addr v0, p0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public final onDozingChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;->this$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    const/4 v0, 0x0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    :cond_2
    :goto_0
    return-void
.end method
