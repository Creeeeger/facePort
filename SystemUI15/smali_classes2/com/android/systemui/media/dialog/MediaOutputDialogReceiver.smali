.class public final Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;->mediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7ceabe12

    if-eq v0, v1, :cond_5

    const v1, 0x5de48178

    if-eq v0, v1, :cond_2

    const p0, 0x7a5e42d6

    if-eq v0, p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_BROADCAST_DIALOG"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/settingslib/flags/Flags;->legacyLeAudioSharing()V

    return-void

    :cond_2
    const-string v0, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "package_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;->mediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    sget p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->$r8$clinit:I

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShow(Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;ZLandroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V

    goto :goto_1

    :cond_4
    :goto_0
    sget-boolean p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiverKt;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "MediaOutputDlgReceiver"

    const-string p1, "Unable to launch media output dialog. Package name is empty."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string p2, "com.android.systemui.action.LAUNCH_SYSTEM_MEDIA_OUTPUT_DIALOG"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;->mediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    sget p0, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->$r8$clinit:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShow(Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;ZLandroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V

    :cond_7
    :goto_1
    return-void
.end method
