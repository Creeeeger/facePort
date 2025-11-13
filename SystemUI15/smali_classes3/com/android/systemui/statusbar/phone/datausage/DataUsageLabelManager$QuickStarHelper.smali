.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# instance fields
.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    return-void
.end method


# virtual methods
.method public final updateQuickStarStyle()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateLabelVisibility(Z)V

    return-void
.end method
