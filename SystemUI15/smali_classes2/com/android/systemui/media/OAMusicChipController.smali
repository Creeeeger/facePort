.class public final Lcom/android/systemui/media/OAMusicChipController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public appIcon:Landroid/graphics/drawable/Icon;

.field public bgColor:Ljava/lang/Integer;

.field public clickIntent:Landroid/app/PendingIntent;

.field public final isPlayerOAPlayedSupplier:Ljava/util/function/BooleanSupplier;

.field public isPlaying:Ljava/lang/Boolean;

.field public final ongoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

.field public songTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/OAMusicChipController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/OAMusicChipController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;Ljava/util/function/BooleanSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/OAMusicChipController;->ongoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iput-object p3, p0, Lcom/android/systemui/media/OAMusicChipController;->isPlayerOAPlayedSupplier:Ljava/util/function/BooleanSupplier;

    const-string p0, "OAMusicChipController"

    const-string p1, "OA created"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final updatePlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/OAMusicChipController;->isPlaying:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/systemui/media/OAMusicChipController;->isPlayerOAPlayedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    const-string/jumbo v1, "updateChip Called, isPlayerOAPlayed : "

    const-string v3, "OAMusicChipController"

    invoke-static {v1, v3, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/systemui/media/OAMusicChipController;->isPlayerOAPlayedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/OAMusicChipController;->appIcon:Landroid/graphics/drawable/Icon;

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/media/OAMusicChipController;->songTitle:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/android/systemui/media/OAMusicChipController;->bgColor:Ljava/lang/Integer;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/media/OAMusicChipController;->clickIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/media/OAMusicChipController;->bgColor:Ljava/lang/Integer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/media/OAMusicChipController;->clickIntent:Landroid/app/PendingIntent;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/media/OAMusicChipController;->isPlaying:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/media/OAMusicChipController;->ongoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->currentMediaOngoingActivityInfo:Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->baseActivityComponentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v7, ""

    :cond_5
    invoke-static {v6, v7, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move v0, v2

    :cond_7
    new-instance v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;

    invoke-direct {v6, v1, v3, p1, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;-><init>(Ljava/lang/String;ILandroid/graphics/drawable/Icon;Landroid/app/PendingIntent;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->currentMediaOngoingActivityInfo:Lcom/android/systemui/statusbar/phone/ongoingactivity/MediaOngoingActivityInfo;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, " U.M.C.D. - "

    const-string v4, " "

    invoke-static {v3, v1, v4, p1, v4}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaOngoingActivity"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isMediaPlaying:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaPauseTimerHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->dismissMediaRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$dismissMediaRunnable$1;

    if-ne v3, v2, :cond_8

    if-nez p1, :cond_8

    const-string v2, "dismissMediaTimerRun start. wait 60 sec"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v1, 0xea60

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_8
    if-nez v3, :cond_9

    if-ne p1, v2, :cond_9

    const-string v2, "dismissMediaTimerStop start. dismiss runnable request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isMediaPlaying:Z

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateMediaChipData()V

    if-eqz v0, :cond_b

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->userManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->updateOngoingList(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    :cond_b
    :goto_3
    return-void
.end method
