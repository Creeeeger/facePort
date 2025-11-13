.class public final Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# instance fields
.field public mTicketName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/battery/BatteryMeterViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;->mTicketName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/battery/BatteryMeterViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    return-void
.end method


# virtual methods
.method public final updateQuickStarStyle()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isHiddenBatteryIcon()Z

    move-result v0

    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$1600(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v1, v1, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$1700(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
