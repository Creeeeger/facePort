.class public final Landroidx/picker/widget/SeslAppPickerView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslAppPickerView;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslAppPickerView;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView$2;->this$0:Landroidx/picker/widget/SeslAppPickerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView$2;->this$0:Landroidx/picker/widget/SeslAppPickerView;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->disposable:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void
.end method
