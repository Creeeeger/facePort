.class public final Lcom/android/systemui/shade/NotificationPanelViewController$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$14;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$14;->mCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$14;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$14;->mCancelled:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onFlingEnd(Z)V

    return-void
.end method
