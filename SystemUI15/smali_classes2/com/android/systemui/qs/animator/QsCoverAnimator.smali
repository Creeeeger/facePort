.class public final Lcom/android/systemui/qs/animator/QsCoverAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mPanelViewAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mPanelViewTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mQSPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qp/SubscreenQsPanelController;)V
    .locals 3

    const/4 p1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/android/systemui/qp/SubscreenQsPanelController;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    invoke-static {v0, v1}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->getInstance(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    move-result-object v0

    iput-object v0, p2, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    :cond_0
    iget-object p2, p2, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    iget-object p2, p2, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mQSPanel:Landroid/view/View;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v1, p1, [F

    fill-array-data v1, :array_0

    const-string/jumbo v2, "translationY"

    invoke-virtual {v0, p2, v2, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mPanelViewTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    const-string v1, "alpha"

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const p1, 0x3eb33333    # 0.35f

    iput p1, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mPanelViewAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :goto_0
    return-void

    :array_0
    .array-data 4
        -0x3bcc0000    # -720.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method
