.class public final Lcom/android/systemui/DessertCaseView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/DessertCaseView;

.field public final synthetic val$v:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DessertCaseView;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$2;->this$0:Lcom/android/systemui/DessertCaseView;

    iput-object p2, p0, Lcom/android/systemui/DessertCaseView$2;->val$v:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/DessertCaseView$2;->this$0:Lcom/android/systemui/DessertCaseView;

    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$2;->val$v:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    invoke-static {v2}, Lcom/android/systemui/DessertCaseView;->irand(I)I

    move-result v2

    iget v3, p1, Lcom/android/systemui/DessertCaseView;->mRows:I

    invoke-static {v3}, Lcom/android/systemui/DessertCaseView;->irand(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    iget-object p1, p0, Lcom/android/systemui/DessertCaseView$2;->this$0:Lcom/android/systemui/DessertCaseView;

    new-instance v0, Lcom/android/systemui/DessertCaseView$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/DessertCaseView$2$1;-><init>(Lcom/android/systemui/DessertCaseView$2;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
