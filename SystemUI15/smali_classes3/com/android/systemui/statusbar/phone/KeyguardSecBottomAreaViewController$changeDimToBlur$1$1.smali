.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeDimToBlur$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $secKeyguardSecAffordanceView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeDimToBlur$1$1;->$secKeyguardSecAffordanceView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeDimToBlur$1$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/16 v0, 0xff

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeDimToBlur$1$1;->$secKeyguardSecAffordanceView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeDimToBlur$1$1;->$secKeyguardSecAffordanceView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-eqz v1, :cond_2

    rsub-int v2, p1, 0xff

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setDrawBackgroundAlpha(I)V

    :cond_2
    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeDimToBlur$1$1;->$secKeyguardSecAffordanceView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$changeDimToBlur$1$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    :cond_3
    return-void
.end method
