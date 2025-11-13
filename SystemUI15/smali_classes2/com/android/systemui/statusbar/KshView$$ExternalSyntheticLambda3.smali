.class public final synthetic Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KshView;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/KshView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/KshView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, v0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    if-eq p1, v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, p1, p0}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/KshView;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
