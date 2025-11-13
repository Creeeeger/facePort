.class public final Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSineInOut33:Landroid/view/animation/Interpolator;

.field public mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public mStackScrollerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mStackScrollerOverscrolling:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mSineInOut33:Landroid/view/animation/Interpolator;

    return-void
.end method
