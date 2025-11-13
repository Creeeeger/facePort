.class public final Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mMediaHost:Lcom/android/systemui/media/SecMediaHost;

.field public mRootView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/SecMediaHost;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0482

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mRootView:Landroid/widget/FrameLayout;

    sget-object p1, Lcom/android/systemui/media/MediaType;->COVER:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/SecMediaHost;->removeMediaFrame(Lcom/android/systemui/media/MediaType;)V

    iget-object p0, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/media/SecMediaHost;->addMediaFrame(Lcom/android/systemui/media/MediaType;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mRootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final removeListener()V
    .locals 0

    return-void
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "STATE_MUSIC_CAPSULE_INFO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, " request "

    const-string v2, "SubLauncherMusic"

    invoke-static {v0, p1, v2}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    if-eqz p2, :cond_5

    const-string v0, "capsule"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p0, Lcom/android/systemui/media/MediaType;->COVER:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    const-string v0, "SecMediaHost"

    if-nez p2, :cond_1

    const-string p0, "There is no current media data, exit"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerData(Lcom/android/systemui/media/MediaType;)Lcom/android/systemui/media/SecMediaPlayerData;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "There is no frame, exit"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    iget-object p1, p1, Lcom/android/systemui/media/MediaDataFormat;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/SecMediaControlPanel;

    if-nez p0, :cond_3

    const-string p0, "There is no player for key, exit"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsPlayerCoverPlayed:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateEqualizerState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0482

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mRootView:Landroid/widget/FrameLayout;

    sget-object p2, Lcom/android/systemui/media/MediaType;->COVER:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/SecMediaHost;->removeMediaFrame(Lcom/android/systemui/media/MediaType;)V

    iget-object p0, p0, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/media/SecMediaHost;->addMediaFrame(Lcom/android/systemui/media/MediaType;Landroid/view/View;)V

    :cond_6
    :goto_0
    return-object v1
.end method

.method public final setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    return-void
.end method
