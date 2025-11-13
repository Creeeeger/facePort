.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$makeBarRecyclerAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$makeBarRecyclerAdapter$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemRangeMoved(II)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$makeBarRecyclerAdapter$1;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method
