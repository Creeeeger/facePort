.class public final Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/settings/UserTracker;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    iput-object p2, p0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public final getSelectedComponent(Landroid/os/UserHandle;)Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;
    .locals 4

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v0, "controls_prefs"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "controls_custom_component"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    const-string v1, "controls_custom_structure"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    const-string v2, "controls_custom_is_panel"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v0, v1, p1, p0}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V

    return-object v0
.end method

.method public final removeSelectedComponent()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v1, "controls_prefs"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "controls_custom_component"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "controls_custom_structure"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "controls_custom_is_panel"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v1, "controls_prefs"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget-object v0, p1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "controls_custom_component"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "controls_custom_structure"

    iget-object v1, p1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->name:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "controls_custom_is_panel"

    iget-boolean p1, p1, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->isPanel:Z

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
