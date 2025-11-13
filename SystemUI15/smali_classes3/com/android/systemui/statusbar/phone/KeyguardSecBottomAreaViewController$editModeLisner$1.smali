.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$editModeLisner$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$editModeLisner$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnded()V
    .locals 0

    return-void
.end method

.method public final onAnimationStarted(Z)V
    .locals 0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$editModeLisner$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$isEditorShortcutTransitionNeeded(ILcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$changeDimToBlur(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$isEditorShortcutTransitionNeeded(ILcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$changeDimToBlur(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    :cond_1
    return-void
.end method

.method public final onTouchDownCanceled()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$editModeLisner$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$isEditorShortcutTransitionNeeded(ILcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$changeDimToBlur(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$isEditorShortcutTransitionNeeded(ILcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$changeDimToBlur(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    :cond_1
    return-void
.end method

.method public final onTouchDownStarted()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$editModeLisner$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$isEditorShortcutTransitionNeeded(ILcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$changeBlurToDim(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$isEditorShortcutTransitionNeeded(ILcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$changeBlurToDim(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    :cond_1
    return-void
.end method
