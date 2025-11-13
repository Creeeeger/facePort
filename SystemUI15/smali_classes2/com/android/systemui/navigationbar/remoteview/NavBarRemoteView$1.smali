.class public final Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView$1;->this$0:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView$1;->this$0:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->ripple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->exitHoverAnim()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->ripple:Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/SamsungKeyButtonRipple;->startHoverAnim()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
