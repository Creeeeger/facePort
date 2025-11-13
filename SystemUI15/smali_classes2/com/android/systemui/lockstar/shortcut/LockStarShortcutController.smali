.class public final Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bottomAreaCallback:Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;

.field public final context:Landroid/content/Context;

.field public final taskList:Ljava/util/ArrayList;

.field public final zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->taskList:Ljava/util/ArrayList;

    return-void
.end method
