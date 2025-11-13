.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/screenshot/OverlayActionChip;->mIsPending:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/OverlayActionChip;->setPressed(Z)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    iput-boolean v0, p1, Lcom/android/systemui/screenshot/OverlayActionChip;->mIsPending:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/OverlayActionChip;->setPressed(Z)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/screenshot/OverlayActionChip;->mIsPending:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/OverlayActionChip;->setPressed(Z)V

    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->QUICK_SHARE:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    return-void
.end method
