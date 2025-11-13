.class public final Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->getItemCount()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
