.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 p1, 0x2

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-eqz v2, :cond_0

    const v0, 0x7f0a0c46

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mBlurView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    const v3, 0x7f0a0c45

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mBlurView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0813e4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    new-array p1, p1, [F

    const/4 v3, 0x0

    aput v2, p1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, p1, v3

    const-string v2, "alpha"

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelShowAnimation$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelShowAnimation$1$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelShowAnimation$1$2;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelShowAnimation$1$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
