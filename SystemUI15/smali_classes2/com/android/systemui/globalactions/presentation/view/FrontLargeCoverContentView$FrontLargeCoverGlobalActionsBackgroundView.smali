.class public final Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BLUR_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
