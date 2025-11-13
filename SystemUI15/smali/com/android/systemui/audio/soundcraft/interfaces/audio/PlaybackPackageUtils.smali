.class public final Lcom/android/systemui/audio/soundcraft/interfaces/audio/PlaybackPackageUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/audio/PlaybackPackageUtils;

.field public static final PLAYBACK_BLOCKED_PACKAGE:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/audio/PlaybackPackageUtils;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/audio/PlaybackPackageUtils;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/audio/PlaybackPackageUtils;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/audio/PlaybackPackageUtils;

    const-string v16, "com.samsung.android.app.interpreter"

    const-string v17, "com.samsung.wearable.watch7plugin"

    const-string v1, "com.samsung.android.app.soundpicker"

    const-string v2, "com.baidu.searchbox"

    const-string v3, "com.android.server.telecom"

    const-string v4, "com.sds.sdsmeeting"

    const-string v5, "com.sds.meeting"

    const-string v6, "com.sds.squaremeeting"

    const-string v7, "com.sds.proctormeeting"

    const-string v8, "com.sds.mysinglesquare"

    const-string v9, "com.sds.teams"

    const-string v10, "com.sds.mysinglesquare"

    const-string v11, "com.sds.squaremessenger"

    const-string v12, "com.samsung.android.bixby.agent"

    const-string v13, "com.harman.hkconnect"

    const-string v14, "com.samsung.android.audiomirroring"

    const-string v15, "com.sec.remotecast"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/audio/PlaybackPackageUtils;->PLAYBACK_BLOCKED_PACKAGE:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
