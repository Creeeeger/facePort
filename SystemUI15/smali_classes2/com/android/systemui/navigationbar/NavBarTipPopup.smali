.class public final Lcom/android/systemui/navigationbar/NavBarTipPopup;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public currentMessage:I

.field public final handler:Landroid/os/Handler;

.field public isTipPopupShowing:Z

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public navBarWidth:I

.field public final onAttachStateChangeListener:Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;

.field public final tipLayout:Landroid/view/View;

.field public tipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/NavBarTipPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/NavBarTipPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->windowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0255

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup$onAttachStateChangeListener$1;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->isTipPopupShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hide fail="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "Tip"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
