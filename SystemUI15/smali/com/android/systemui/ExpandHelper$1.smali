.class public final Lcom/android/systemui/ExpandHelper$1;
.super Landroid/util/FloatProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget-object p0, p1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 2

    check-cast p1, Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget-object p0, p1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    float-to-int v0, p2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    iget-object p0, p1, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    return-void
.end method
