.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$expandAnimation$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $sceneCollapse:Landroid/transition/Scene;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/transition/Scene;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$expandAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$expandAnimation$1;->$sceneCollapse:Landroid/transition/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$expandAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$expandAnimation$1;->$sceneCollapse:Landroid/transition/Scene;

    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0a0c03

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingWidth:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingHeight:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->changeLayoutSize(Landroid/view/View;II)V

    const v1, 0x7f0a08e8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingWidth:I

    iget v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingHeight:I

    invoke-static {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->changeLayoutSize(Landroid/view/View;II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->changeLayoutMargin(Landroid/view/View;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
