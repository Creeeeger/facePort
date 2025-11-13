.class public final synthetic Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSImpl;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Lcom/android/systemui/plugins/qs/QS$ScrollListener;->onQsPanelScrollChanged(I)V

    :cond_0
    return-void
.end method
