.class public final Landroidx/fragment/app/ListFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/fragment/app/ListFragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/ListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/ListFragment$2;->this$0:Landroidx/fragment/app/ListFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/ListFragment$2;->this$0:Landroidx/fragment/app/ListFragment;

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/ListFragment;->onListItemClick(Landroid/view/View;I)V

    return-void
.end method
