.class public final synthetic Lcom/android/systemui/navigationbar/SafeUINavigationBarView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/SafeUINavigationBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/SafeUINavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/SafeUINavigationBarView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/SafeUINavigationBarView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance p0, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/16 v12, 0x101

    move-object v0, p0

    move-wide v1, v3

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance p0, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/16 v12, 0x48

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/16 v13, 0x101

    move-object v1, p0

    move-wide v2, v4

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method
