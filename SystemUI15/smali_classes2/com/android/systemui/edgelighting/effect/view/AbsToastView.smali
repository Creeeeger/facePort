.class public abstract Lcom/android/systemui/edgelighting/effect/view/AbsToastView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public isAnimating:Ljava/lang/Boolean;

.field public mIsHiding:Z

.field public mMaxWidth:I

.field public mMinWidth:I

.field public mScreenWidth:I

.field public mToastFullColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    const/16 p1, 0x5f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    const/16 p1, 0x2da

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    const/16 p1, 0x5f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    const/16 p1, 0x2da

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    const/16 p1, 0x5f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    const/16 p1, 0x2da

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    return-void
.end method
