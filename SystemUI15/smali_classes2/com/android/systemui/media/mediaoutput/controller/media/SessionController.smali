.class public abstract Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BLUETOOTH_MEDIA_SESSION_PACKAGE:Ljava/util/List;

.field public static final Companion:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;

.field public static final LAUNCH_BLOCKED_LIST:Ljava/util/List;

.field public static final MEDIA_SESSION_BLOCKED_LIST:Ljava/util/List;

.field public static final RECENT_BLOCKED_LIST:Ljava/util/List;


# instance fields
.field public final _mediaInfo:Landroidx/lifecycle/MutableLiveData;

.field public final context:Landroid/content/Context;

.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public isClosed:Z

.field public isGrayscaleThumbnail:Z

.field public final mediaInfo:Landroidx/lifecycle/MutableLiveData;

.field public final token:Landroid/media/session/MediaSession$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;

    const-string v0, "com.android.bluetooth"

    const-string v1, "com.android.bluetooth.services"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->BLUETOOTH_MEDIA_SESSION_PACKAGE:Ljava/util/List;

    const-string v38, "com.samsung.wearable.watch7plugin"

    const-string v39, "kr.co.captv.pooqV2"

    const-string v1, "com.sec.android.app.sbrowser"

    const-string v2, "com.android.chrome"

    const-string v3, "com.nhn.android.search"

    const-string v4, "com.samsung.android.app.soundpicker"

    const-string v5, "com.baidu.searchbox"

    const-string v6, "com.uplus.onphone"

    const-string v7, "com.uplus.musicshow"

    const-string v8, "com.uplus.baseballhdtv"

    const-string v9, "com.uplus.ugolf"

    const-string v10, "de.telekom.t_online_de"

    const-string v11, "com.sec.android.gallery3d"

    const-string v12, "com.android.server.telecom"

    const-string v13, "com.sds.sdsmeeting"

    const-string v14, "com.sds.meeting"

    const-string v15, "com.sds.squaremeeting"

    const-string v16, "com.sds.proctormeeting"

    const-string v17, "com.sds.mysinglesquare"

    const-string v18, "com.google.android.apps.tachyon"

    const-string v19, "com.whatsapp"

    const-string v20, "com.google.android.talk"

    const-string v21, "org.telegram.messenger"

    const-string v22, "jp.naver.line.android"

    const-string v23, "com.facebook.katana"

    const-string v24, "com.kakao.talk"

    const-string v25, "com.google.android.apps.meetings"

    const-string/jumbo v26, "us.zoom.videomeetings"

    const-string v27, "com.microsoft.teams"

    const-string v28, "com.sds.teams"

    const-string v29, "com.sds.mysinglesquare"

    const-string v30, "com.sds.squaremessenger"

    const-string v31, "com.sec.android.app.vepreload"

    const-string v32, "com.google.android.apps.photos"

    const-string v33, "com.samsung.android.bixby.agent"

    const-string v34, "com.harman.hkconnect"

    const-string v35, "com.samsung.android.audiomirroring"

    const-string v36, "com.sec.remotecast"

    const-string v37, "com.samsung.android.app.interpreter"

    filled-new-array/range {v1 .. v39}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->MEDIA_SESSION_BLOCKED_LIST:Ljava/util/List;

    const-string v9, "com.uplus.onphone"

    const-string v10, "com.uplus.musicshow"

    const-string v1, "com.google.android.videos"

    const-string v2, "com.samsung.android.video"

    const-string v3, "org.videolan.vlc"

    const-string v4, "com.gretech.gomplayerko"

    const-string v5, "com.mxtech.videoplayer.ad"

    const-string v6, "com.samsung.android.app.soundpicker"

    const-string v7, "com.baidu.searchbox"

    const-string v8, "com.samsung.android.bixby.agent"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->LAUNCH_BLOCKED_LIST:Ljava/util/List;

    const-string v7, "mp3.music.download.player.music.search"

    const-string v8, "kr.co.kbs.kong"

    const-string v1, "com.google.android.youtube"

    const-string v2, "com.google.android.videos"

    const-string v3, "com.google.android.apps.youtube.music"

    const-string v4, "com.samsung.android.app.soundpicker"

    const-string v5, "com.baidu.searchbox"

    const-string/jumbo v6, "vkr.co.millie.millieshelf"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->RECENT_BLOCKED_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->token:Landroid/media/session/MediaSession$Token;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->_mediaInfo:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public abstract execute(JJ)V
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public final update(Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->_mediaInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
