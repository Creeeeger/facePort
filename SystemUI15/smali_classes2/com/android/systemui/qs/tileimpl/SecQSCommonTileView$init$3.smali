.class public final Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$init$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $expandable:Lcom/android/systemui/animation/Expandable;

.field public final synthetic $tile:Lcom/android/systemui/plugins/qs/QSTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$init$3;->$tile:Lcom/android/systemui/plugins/qs/QSTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$init$3;->$expandable:Lcom/android/systemui/animation/Expandable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$init$3;->$tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$init$3;->$expandable:Lcom/android/systemui/animation/Expandable;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick(Lcom/android/systemui/animation/Expandable;)V

    const/4 p0, 0x1

    return p0
.end method
