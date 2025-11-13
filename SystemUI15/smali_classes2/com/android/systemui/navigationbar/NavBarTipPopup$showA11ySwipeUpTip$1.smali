.class public final Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $talkbackEnabled:Z

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;->$talkbackEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;->$talkbackEnabled:Z

    if-eqz v1, :cond_0

    const v1, 0x7f130708

    goto :goto_0

    :cond_0
    const v1, 0x7f130707

    :goto_0
    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v3, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->isTipPopupShowing:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070abb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->windowManager:Landroid/view/WindowManager;

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    new-instance v13, Landroid/view/WindowManager$LayoutParams;

    const/4 v9, 0x0

    const/16 v11, 0x208

    const/16 v10, 0x7d8

    const/4 v12, -0x3

    const/4 v6, -0x2

    const/4 v7, -0x2

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v5, 0x10

    invoke-virtual {v13, v5}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const-string v5, "NavBarTip"

    invoke-virtual {v13, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v5, 0x53

    iput v5, v13, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-interface {v2, v4, v13}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput v1, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->currentMessage:I

    sget-object v0, Lcom/android/systemui/navigationbar/util/NavBarTipPopupUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavBarTipPopupUtil;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "NavigationBarAccessibilityShortcutTipCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {p0, v2, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
