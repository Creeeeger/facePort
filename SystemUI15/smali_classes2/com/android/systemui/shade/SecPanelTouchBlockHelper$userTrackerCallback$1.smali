.class public final Lcom/android/systemui/shade/SecPanelTouchBlockHelper$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecPanelTouchBlockHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecPanelTouchBlockHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$userTrackerCallback$1;->this$0:Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBeforeUserSwitching(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$userTrackerCallback$1;->this$0:Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    const-string v0, "onBeforeUserSwitching: "

    const-string v1, " : "

    const-string v2, "SecPanelTouchBlockHelper"

    invoke-static {p1, p0, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper$userTrackerCallback$1;->this$0:Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    const-string p2, "onUserChanged: "

    const-string v0, " : "

    const-string v1, "SecPanelTouchBlockHelper"

    invoke-static {p1, p0, p2, v0, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
