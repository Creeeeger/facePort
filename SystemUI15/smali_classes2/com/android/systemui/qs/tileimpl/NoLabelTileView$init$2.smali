.class public final Lcom/android/systemui/qs/tileimpl/NoLabelTileView$init$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $expandable:Lcom/android/systemui/animation/Expandable;

.field public final synthetic $tile:Lcom/android/systemui/plugins/qs/QSTile;

.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/NoLabelTileView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable;Lcom/android/systemui/qs/tileimpl/NoLabelTileView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$init$2;->$tile:Lcom/android/systemui/plugins/qs/QSTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$init$2;->$expandable:Lcom/android/systemui/animation/Expandable;

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$init$2;->this$0:Lcom/android/systemui/qs/tileimpl/NoLabelTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$init$2;->$tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$init$2;->$expandable:Lcom/android/systemui/animation/Expandable;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick(Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/NoLabelTileView$init$2;->this$0:Lcom/android/systemui/qs/tileimpl/NoLabelTileView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    const/4 p0, 0x1

    return p0
.end method
