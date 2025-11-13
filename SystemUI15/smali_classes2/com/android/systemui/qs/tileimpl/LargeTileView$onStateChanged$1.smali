.class public final Lcom/android/systemui/qs/tileimpl/LargeTileView$onStateChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $state:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/LargeTileView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/LargeTileView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/LargeTileView$onStateChanged$1;->this$0:Lcom/android/systemui/qs/tileimpl/LargeTileView;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/LargeTileView$onStateChanged$1;->$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/LargeTileView$onStateChanged$1;->this$0:Lcom/android/systemui/qs/tileimpl/LargeTileView;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/LargeTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/LargeTileView$onStateChanged$1;->$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    sget-object v1, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->Companion:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method
