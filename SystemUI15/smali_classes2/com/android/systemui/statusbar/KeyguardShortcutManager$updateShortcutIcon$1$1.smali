.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "updateShortcutsIcon : "

    const-string v0, " is invalid task name"

    const-string v1, "KeyguardShortcutManager"

    invoke-static {p1, p0, v0, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isMonotoneIcon:Z

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskTypeEnabled(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    aget-object v3, v3, v4

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object v1, v1, v4

    invoke-interface {v1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->isIconPaddingRequired()Z

    move-result v1

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isIconPaddingNeeded:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object p1, v1, p1

    iget-object v1, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    aget-object v1, v1, v4

    invoke-interface {v1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v1, "navibar"

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    aget-object v1, v1, v6

    iget-boolean v8, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isIconPaddingNeeded:Z

    const/4 v7, 0x0

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->convertTaskDrawable(Landroid/graphics/drawable/Drawable;ZZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    aget-object v1, v1, v3

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object p1, p1, v3

    invoke-interface {p1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    aget-object v1, v1, v3

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object p1, p1, v3

    invoke-interface {p1, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getPanelIconTransitionDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelTransitDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    aget-object v0, v0, p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->keyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    aget-object p0, p1, p0

    invoke-interface {p0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->isUnlockWaitRequired()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isUnlockWaitNeeded:Z

    return v2
.end method
