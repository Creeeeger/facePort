.class public final Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$settingsObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$settingsObserver$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$settingsObserver$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->lockScreenMediaPlayerUri:Landroid/net/Uri;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$settingsObserver$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 p2, 0x1

    const/4 v0, -0x2

    const-string v1, "media_controls_lock_screen"

    invoke-interface {p1, v1, p2, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getBoolForUser(Ljava/lang/String;ZI)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->allowMediaPlayerOnLockScreen:Z

    :cond_0
    return-void
.end method
