.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dreamViewModel:Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;

.field public final logger:Lcom/android/systemui/log/core/Logger;

.field public mAnimator:Landroid/animation/Animator;

.field public final mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

.field public final mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

.field public final mCurrentAlphaAtPosition:Ljava/util/Map;

.field public mCurrentBlurRadius:F

.field public final mDreamBlurRadius:I

.field public final mDreamInBlurAnimDurationMs:J

.field public final mDreamInComplicationsAnimDurationMs:J

.field public final mDreamInTranslationYDistance:I

.field public final mDreamInTranslationYDurationMs:J

.field public final mOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mStatusBarViewController:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;

.field public view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;Lcom/android/systemui/dreams/DreamOverlayStateController;ILcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;JJIJLcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    iput-object p3, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mStatusBarViewController:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;

    iput-object p4, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iput p5, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamBlurRadius:I

    iput-object p6, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->dreamViewModel:Lcom/android/systemui/dreams/ui/viewmodel/DreamViewModel;

    iput-wide p7, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInBlurAnimDurationMs:J

    iput-wide p9, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInComplicationsAnimDurationMs:J

    iput p11, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInTranslationYDistance:I

    iput-wide p12, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInTranslationYDurationMs:J

    new-instance p1, Lcom/android/systemui/log/core/Logger;

    const-string p2, "DreamOverlayAnimationsController"

    invoke-direct {p1, p14, p2}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->logger:Lcom/android/systemui/log/core/Logger;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mCurrentAlphaAtPosition:Ljava/util/Map;

    return-void
.end method

.method public static final access$setElementsAlphaAtPosition(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;FIZ)V
    .locals 4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mCurrentAlphaAtPosition:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/complication/ComplicationHostViewController;->getViewsAtPosition(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;FZ)V

    goto :goto_0

    :cond_0
    invoke-static {v1, p1, v3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mStatusBarViewController:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->setFadeAmount(FZ)V

    :cond_2
    return-void
.end method

.method public static final access$setElementsTranslationYAtPosition(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;FI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/complication/ComplicationHostViewController;->getViewsAtPosition(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mStatusBarViewController:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->setTranslationY(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final cancelAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    return-void
.end method
