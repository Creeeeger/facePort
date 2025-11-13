.class public final Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$bindViews$layoutCompletedCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$bindViews$layoutCompletedCallback$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$bindViews$layoutCompletedCallback$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->currentPosition:Landroid/os/Parcelable;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method
