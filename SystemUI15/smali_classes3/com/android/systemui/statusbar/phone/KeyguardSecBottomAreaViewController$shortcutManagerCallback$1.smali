.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateShortcutView(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$getMView$p$s2038760804(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;-><init>(ILcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isAllShortcutDisabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isAllShortcutDisabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->isAllShortcutDisabled:Z

    if-eq p1, v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$getMView$p$s2038760804(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLayout()V

    :cond_1
    return-void
.end method
