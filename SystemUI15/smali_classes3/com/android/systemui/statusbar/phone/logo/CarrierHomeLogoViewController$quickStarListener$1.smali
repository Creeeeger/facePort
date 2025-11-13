.class public final Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$quickStarListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$quickStarListener$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateQuickStarStyle()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$quickStarListener$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    iget-object v2, v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean v2, v2, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    iget v1, v1, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v3

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->quickStarEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->updateCarrierLogoVisibility()V

    return-void
.end method
