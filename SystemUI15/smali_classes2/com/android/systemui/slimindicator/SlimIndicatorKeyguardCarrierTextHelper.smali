.class public final Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# instance fields
.field public mCarrierTextView:Lcom/android/keyguard/CarrierText;

.field public mOriginalVisibility:I

.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    return-void
.end method


# virtual methods
.method public final updateQuickStarStyle()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateQuickStarStyle() visibility:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mOriginalVisibility:I

    const-string v2, "SlimIndicatorKeyguardCarrierTextHelper"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mCarrierTextView:Lcom/android/keyguard/CarrierText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mOriginalVisibility:I

    invoke-virtual {v0, p0}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    return-void
.end method
