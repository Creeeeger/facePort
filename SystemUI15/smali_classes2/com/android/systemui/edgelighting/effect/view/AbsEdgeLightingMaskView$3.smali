.class public final Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;->this$0:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;->this$0:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
