.class public final Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onAttachedToRecyclerView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onAttachedToRecyclerView$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onAttachedToRecyclerView$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onAttachedToRecyclerView$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget v1, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->attachedToRecyclerView$1(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
