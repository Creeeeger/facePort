.class public final Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$onAttachedToRecyclerView$1$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$onAttachedToRecyclerView$1$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter$onAttachedToRecyclerView$1$1;->this$0:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    iget-object v0, p1, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->layoutCompletedCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->layoutCompletedCallback:Ljava/util/function/Consumer;

    return-void
.end method
