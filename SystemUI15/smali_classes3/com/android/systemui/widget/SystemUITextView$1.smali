.class public final Lcom/android/systemui/widget/SystemUITextView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/widget/SystemUITextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/widget/SystemUITextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUITextView$1;->this$0:Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLockStarEnabled(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView$1;->this$0:Lcom/android/systemui/widget/SystemUITextView;

    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsLockStarEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mGroup:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mDefaultArea:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    :goto_0
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object p1, p1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWallpaperArea:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void
.end method
