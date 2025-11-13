.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;
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

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->$th:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->$th:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;IZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutForCamera:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setRectangleColor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutForPhone(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutForPhone:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;IZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutForCamera:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setRectangleColor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutForPhone(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutForPhone:Z

    :cond_1
    :goto_0
    return-void
.end method
