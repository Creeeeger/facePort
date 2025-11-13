.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;->$th:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;->$th:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;IZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutIconOnly$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;IZ)V

    :cond_1
    :goto_0
    return-void
.end method
