.class public final Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$spanSizeLookup$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->getItemViewType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/util/SpanInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->span:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
