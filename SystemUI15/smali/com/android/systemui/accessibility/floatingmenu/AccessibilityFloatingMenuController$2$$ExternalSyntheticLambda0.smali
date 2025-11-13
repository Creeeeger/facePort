.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;

.field public final synthetic f$1:Lcom/samsung/android/desktopmode/SemDesktopModeState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    iget-boolean v2, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsKeyguardVisible:Z

    iget v3, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    iget-object v4, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ILjava/lang/String;Z)V

    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    iget-object p0, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mDesktopModeListener:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$2;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method
