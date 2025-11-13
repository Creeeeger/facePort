.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
