.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doActionNotification()V
    .locals 0

    return-void
.end method

.method public final onClickExpandButton(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onClickToastInWindow()V
    .locals 0

    return-void
.end method

.method public final onDismissEdgeWindow()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout(I)V

    :cond_0
    return-void
.end method

.method public final onExtendLightingDuration()V
    .locals 0

    return-void
.end method

.method public final onFling(ZZ)V
    .locals 0

    return-void
.end method

.method public final onFlingDownInWindow(Z)V
    .locals 0

    return-void
.end method

.method public final onShowEdgeWindow()V
    .locals 0

    return-void
.end method

.method public final onSwipeToastInWindow()V
    .locals 0

    return-void
.end method
