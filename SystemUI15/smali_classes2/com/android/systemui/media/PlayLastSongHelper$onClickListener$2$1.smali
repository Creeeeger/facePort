.class public final Lcom/android/systemui/media/PlayLastSongHelper$onClickListener$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/PlayLastSongHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/PlayLastSongHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper$onClickListener$2$1;->this$0:Lcom/android/systemui/media/PlayLastSongHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper$onClickListener$2$1;->this$0:Lcom/android/systemui/media/PlayLastSongHelper;

    iget-object v0, p1, Lcom/android/systemui/media/PlayLastSongHelper;->mediaSessionToken:Landroid/media/session/MediaSession$Token;

    iget-object v1, p1, Lcom/android/systemui/media/PlayLastSongHelper;->lastPkgName:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/android/systemui/media/PlayLastSongHelper;->enabled:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PlayLastSongHelper"

    invoke-static {v2, p1, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper$onClickListener$2$1;->this$0:Lcom/android/systemui/media/PlayLastSongHelper;

    iget-boolean v1, p1, Lcom/android/systemui/media/PlayLastSongHelper;->enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MUSIC_PLAYER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/systemui/media/PlayLastSongHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v1, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "ON-CLICK, No apps for INTENT_ACTION_MUSIC_PLAYER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    iget-object v1, p1, Lcom/android/systemui/media/PlayLastSongHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f1310cf

    invoke-static {v0, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->string(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/media/PlayLastSongHelper;->context:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p1, v1, v3, v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZI)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPNE0031"

    invoke-static {p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/media/PlayLastSongHelper;->mediaSessionToken:Landroid/media/session/MediaSession$Token;

    const-string v4, "QPNE0030"

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/android/systemui/media/PlayLastSongHelper;->mediaController:Landroid/media/session/MediaController;

    const-string/jumbo v1, "transportAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 p1, 0x0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lcom/android/systemui/media/PlayLastSongHelper;->lastPkgName:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper$onClickListener$2$1;->this$0:Lcom/android/systemui/media/PlayLastSongHelper;

    const-string v1, "dispatchMediaKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/systemui/media/PlayLastSongHelper;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x7e

    invoke-direct {v0, v3, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/PlayLastSongHelper$onClickListener$2$1;->this$0:Lcom/android/systemui/media/PlayLastSongHelper;

    iget-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/media/PlayLastSongHelper$onClickListener$2$1$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/PlayLastSongHelper$onClickListener$2$1$1$1;-><init>(Lcom/android/systemui/media/PlayLastSongHelper;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
