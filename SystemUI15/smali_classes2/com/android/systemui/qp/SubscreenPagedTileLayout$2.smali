.class public final Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

.field public final synthetic val$cur:I

.field public final synthetic val$pageOffset:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;->val$cur:I

    iput p3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;->val$pageOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cur "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;->val$cur:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "pageOffset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;->val$pageOffset:I

    const-string v2, "requestLayout"

    const-string v3, "SubscreenPagedTileLayout"

    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;->val$cur:I

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iget-object v1, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;->val$cur:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;->val$cur:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method
