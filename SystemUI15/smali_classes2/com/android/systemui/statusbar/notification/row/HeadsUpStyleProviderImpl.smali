.class public final Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;


# instance fields
.field public final statusBarModeRepositoryStore:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProviderImpl;->statusBarModeRepositoryStore:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    return-void
.end method


# virtual methods
.method public final shouldApplyCompactStyle()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->compactHeadsUpNotification()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProviderImpl;->statusBarModeRepositoryStore:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    check-cast p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryImpl;->defaultDisplay:Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl;->isInFullscreenMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "persist.compact_heads_up_notification.always_show"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
