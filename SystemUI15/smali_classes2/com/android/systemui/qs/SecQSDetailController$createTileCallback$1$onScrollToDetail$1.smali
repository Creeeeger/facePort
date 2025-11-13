.class public final Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScrollToDetail$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $x:I

.field public final synthetic $y:I

.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetailController;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScrollToDetail$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iput p2, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScrollToDetail$1;->$x:I

    iput p3, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScrollToDetail$1;->$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScrollToDetail$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetailController;->view:Lcom/android/systemui/qs/SecQSDetail;

    const v1, 0x7f0a0969

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScrollToDetail$1;->$x:I

    iget p0, p0, Lcom/android/systemui/qs/SecQSDetailController$createTileCallback$1$onScrollToDetail$1;->$y:I

    invoke-virtual {v0, v1, p0}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method
