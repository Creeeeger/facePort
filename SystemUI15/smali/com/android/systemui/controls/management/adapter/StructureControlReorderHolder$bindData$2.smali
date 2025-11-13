.class public final Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder$bindData$2;->this$0:Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlReorderHolder;->actionCallback:Ljava/util/function/Consumer;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
