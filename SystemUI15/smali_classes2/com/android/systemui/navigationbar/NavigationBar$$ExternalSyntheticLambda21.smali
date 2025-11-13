.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda21;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    check-cast p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
