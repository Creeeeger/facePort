.class public final Lcom/android/systemui/qs/QSContainerImplController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSContainerImplController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSContainerImplController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController$2;->this$0:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController$2;->this$0:Lcom/android/systemui/qs/QSContainerImplController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
