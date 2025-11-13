.class public final Lcom/android/systemui/media/CoverMusicCapsuleController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bundle:Landroid/os/Bundle;

.field public final capsule:Landroid/widget/RemoteViews;

.field public isLiveStreaming:Z

.field public final isPlayerCoverPlayedSupplier:Ljava/util/function/BooleanSupplier;

.field public final subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/CoverMusicCapsuleController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/CoverMusicCapsuleController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/subscreen/SubScreenManager;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iput-object p3, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->isPlayerCoverPlayedSupplier:Ljava/util/function/BooleanSupplier;

    const-string p2, "com.samsung.android.widgetComponentName"

    const-string p3, "com.samsung.android.app.aodservice/MusicTile"

    invoke-static {p2, p3}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->bundle:Landroid/os/Bundle;

    new-instance p3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0d038d

    invoke-direct {p3, p1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->capsule:Landroid/widget/RemoteViews;

    const-string p1, "CoverMusicCapsuleController"

    const-string v0, "capsule created"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "visible"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "capsule_layout"

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "capsule_priority"

    const-string p3, "low"

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateCapsule()V

    return-void
.end method


# virtual methods
.method public final updateCapsule()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->isPlayerCoverPlayedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    const-string/jumbo v1, "updateCapsule Called, isPlayerCoverPlayed : "

    const-string v2, "CoverMusicCapsuleController"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->isPlayerCoverPlayedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->bundle:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_1

    const-string p0, "SubScreenManager"

    const-string/jumbo v0, "updateCapsule() no plugin"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->updateCapsule(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public final updateEqualizerState(Landroid/media/session/PlaybackState;)V
    .locals 13

    if-nez p1, :cond_0

    const-string/jumbo v0, "state is null"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateEqualizerState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverMusicCapsuleController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->capsule:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x3

    if-ne v0, v8, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_3

    new-instance v0, Lkotlin/Triple;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lkotlin/Triple;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v4, v1, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-boolean v0, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->isLiveStreaming:Z

    if-eqz v0, :cond_4

    new-instance v0, Lkotlin/Triple;

    invoke-direct {v0, v4, v4, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v0

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v9

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v0

    const/4 v9, 0x0

    cmpg-float v0, v0, v9

    if-nez v0, :cond_6

    :goto_3
    new-instance v0, Lkotlin/Triple;

    invoke-direct {v0, v1, v4, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    new-instance v0, Lkotlin/Triple;

    invoke-direct {v0, v4, v1, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const v11, 0x7f0a0aae

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v5, 0x7f0a0aaf

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v5, 0x7f0a0aad

    invoke-virtual {v2, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0a0ab1

    invoke-virtual {v2, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v4, 0x7f0a0ab0

    invoke-virtual {v2, v4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "x%.2f"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0a0aad

    const/4 v6, 0x0

    move-wide v4, v9

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    if-ne p1, v8, :cond_7

    const-string p1, "normal"

    goto :goto_5

    :cond_7
    const-string p1, "low"

    :goto_5
    iget-object v1, p0, Lcom/android/systemui/media/CoverMusicCapsuleController;->capsule:Landroid/widget/RemoteViews;

    const-string v2, "capsule_layout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "capsule_priority"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateCapsule()V

    return-void
.end method
