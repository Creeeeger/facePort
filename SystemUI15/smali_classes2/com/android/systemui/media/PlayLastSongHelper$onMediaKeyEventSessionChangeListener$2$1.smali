.class public final Lcom/android/systemui/media/PlayLastSongHelper$onMediaKeyEventSessionChangeListener$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/PlayLastSongHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/PlayLastSongHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper$onMediaKeyEventSessionChangeListener$2$1;->this$0:Lcom/android/systemui/media/PlayLastSongHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    const-string v1, "OnMediaKeyEventSessionChanged "

    const-string v3, "  "

    const-string v4, "PlayLastSongHelper"

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p0, p0, Lcom/android/systemui/media/PlayLastSongHelper$onMediaKeyEventSessionChangeListener$2$1;->this$0:Lcom/android/systemui/media/PlayLastSongHelper;

    iput-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper;->lastPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/PlayLastSongHelper;->mediaSessionToken:Landroid/media/session/MediaSession$Token;

    if-eqz p2, :cond_2

    new-instance p1, Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    const-string p2, "OnMediaKeyEventSessionChanged currentKeyEventMediaController updated"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper;->mediaController:Landroid/media/session/MediaController;

    return-void
.end method
