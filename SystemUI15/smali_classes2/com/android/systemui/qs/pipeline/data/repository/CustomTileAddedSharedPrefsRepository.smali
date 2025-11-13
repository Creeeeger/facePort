.class public final Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedSharedPrefsRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;


# instance fields
.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedSharedPrefsRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedSharedPrefsRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/settings/UserFileManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedSharedPrefsRepository;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    return-void
.end method


# virtual methods
.method public final isTileAdded(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedSharedPrefsRepository;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string/jumbo v0, "tiles_prefs"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final setTileAdded(Landroid/content/ComponentName;ZI)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedSharedPrefsRepository;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string/jumbo v0, "tiles_prefs"

    invoke-virtual {p0, p3, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
