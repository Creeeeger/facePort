.class public Lcom/android/systemui/pluginlock/component/PluginLockMusic;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLockMusic"


# instance fields
.field private mIsLandscapeAvailable:Z

.field private mIsPortraitAvailable:Z

.field private mMusicGravity:I

.field private mMusicGravityLand:I

.field private mMusicPaddingEnd:I

.field private mMusicPaddingEndLand:I

.field private mMusicPaddingStart:I

.field private mMusicPaddingStartLand:I

.field private mMusicPaddingTop:I

.field private mMusicPaddingTopLand:I

.field private mMusicVisibility:I

.field private mMusicVisibilityLand:I

.field private mStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    const/16 p3, 0x11

    iput p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravity:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    iput p3, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopY()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingStart()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getGravity()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravity:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingStartLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getPaddingEndLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/MusicData;->getGravityLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsPortraitAvailable:Z

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsLandscapeAvailable:Z

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->loadMusicData()V

    return-void
.end method

.method public loadMusicData()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_music_top_padding"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_music_visibility"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_music_start_padding"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_music_end_padding"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_music_gravity"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_music_top_padding_land"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_music_visibility_land"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_music_start_padding_land"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_music_end_padding_land"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_music_gravity_land"

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_music_available"

    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsPortraitAvailable:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_music_available_land"

    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mIsLandscapeAvailable:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadMusicData bundle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "PluginLockMusic"

    invoke-static {v4, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onMusicChanged(Landroid/os/Bundle;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public recover()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->reset(Z)V

    return-void
.end method

.method public registerStateCallback(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mStateListenerList:Ljava/util/List;

    return-void
.end method

.method public reset(Z)V
    .locals 1

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTop:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStart:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEnd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibility:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingTopLand:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingStartLand:I

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicPaddingEndLand:I

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicVisibilityLand:I

    const/16 p1, 0x11

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->mMusicGravityLand:I

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->loadMusicData()V

    return-void
.end method

.method public bridge synthetic setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    return-void
.end method
