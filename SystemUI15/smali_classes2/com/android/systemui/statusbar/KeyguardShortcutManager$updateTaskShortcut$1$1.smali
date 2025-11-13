.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $taskName:Ljava/lang/String;

.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/KeyguardShortcutManager;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$taskName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 10

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "updateTaskShortcut : "

    const-string v2, "KeyguardShortcutManager"

    if-nez p1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    const-string p1, " is disabled from settings"

    invoke-static {p0, v1, p1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v3, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    iget-object v5, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getKeyguardBottomAreaShortcutTask(ILjava/lang/String;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    aget-object p1, p1, v3

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    const-string/jumbo v3, "updateTaskShortcut: taskName =  "

    invoke-static {v3, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    aget-object p1, p1, v3

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    const-string p1, " is invalid task name"

    invoke-static {p0, v1, p1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    aget-object p1, p1, v3

    invoke-interface {p1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$taskName:Ljava/lang/String;

    const-string v3, " Shortcut set to "

    const-string v4, " but "

    invoke-static {p1, v1, v3, p0, v4}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported for the device"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    aget-object v0, v0, v1

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->noUnlockNeeded:Z

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isMonotoneIcon:Z

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskTypeEnabled(I)Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    aget-object v1, v1, v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->isIconPaddingRequired()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isIconPaddingNeeded:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    aget-object v0, v0, v1

    iget-object v5, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v1, v5, v1

    invoke-interface {v1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v1, "navibar"

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v6

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    aget-object v1, v1, v7

    iget-boolean v9, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isIconPaddingNeeded:Z

    const/4 v8, 0x0

    move v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->convertTaskDrawable(Landroid/graphics/drawable/Drawable;ZZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    aget-object v1, v1, v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    aget-object v1, v1, v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v0, v0, v4

    invoke-interface {v0, p1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getPanelIconTransitionDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelTransitDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    aget-object v0, v0, v1

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object p1, p1, v1

    invoke-interface {p1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->pickerName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->appLabel:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    aget-object v0, v0, v1

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object p1, p1, v1

    invoke-interface {p1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->isUnlockWaitRequired()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isUnlockWaitNeeded:Z

    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->$th:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateTaskShortcut th : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " class : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getQuickAffordanceConfigList()Ljava/util/List;

    move v0, v3

    :goto_0
    return v0
.end method
