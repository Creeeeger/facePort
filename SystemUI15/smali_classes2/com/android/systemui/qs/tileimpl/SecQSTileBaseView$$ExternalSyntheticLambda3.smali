.class public final synthetic Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/plugins/qs/QSTile;

.field public final synthetic f$1:Lcom/android/systemui/animation/Expandable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable$Companion$fromView$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/animation/Expandable;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/animation/Expandable;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick(Lcom/android/systemui/animation/Expandable;)V

    const/4 p0, 0x1

    return p0
.end method
