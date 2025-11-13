.class Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;
.super Ljava/util/LinkedList;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mWidthSum:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Integer;)Z
    .locals 2

    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v1, 0xa

    if-le p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    :cond_0
    return v0
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->add(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public final getStableWidth()I
    .locals 1

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    div-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final reset()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->mWidthSum:I

    return-void
.end method
