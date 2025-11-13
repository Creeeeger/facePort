.class final Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$onLockscreenOrShadeInteractive$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $notificationCount:I

.field final synthetic $shouldClearNotificationEffects:Z

.field final synthetic this$0:Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$onLockscreenOrShadeInteractive$1;->this$0:Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;

    iput-boolean p2, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$onLockscreenOrShadeInteractive$1;->$shouldClearNotificationEffects:Z

    iput p3, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$onLockscreenOrShadeInteractive$1;->$notificationCount:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$onLockscreenOrShadeInteractive$1;->this$0:Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;

    iget-object v0, v0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;->statusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-boolean v1, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$onLockscreenOrShadeInteractive$1;->$shouldClearNotificationEffects:Z

    iget p0, p0, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository$onLockscreenOrShadeInteractive$1;->$notificationCount:I

    invoke-interface {v0, v1, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
