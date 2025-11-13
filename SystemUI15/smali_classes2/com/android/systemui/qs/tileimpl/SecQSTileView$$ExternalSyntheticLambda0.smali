.class public final synthetic Lcom/android/systemui/qs/tileimpl/SecQSTileView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tileimpl/SecQSTileView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/SecQSTileView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tileimpl/SecQSTileView;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tileimpl/SecQSTileView;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
