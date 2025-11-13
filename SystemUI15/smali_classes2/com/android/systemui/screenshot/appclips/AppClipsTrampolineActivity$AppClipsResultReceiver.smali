.class public final Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;
.super Landroid/os/ResultReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;->this$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;->this$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.extra.CAPTURE_CONTENT_FOR_NOTE_STATUS_CODE"

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v1, :cond_2

    sget-object v0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->EXTRA_SCREENSHOT_URI:Ljava/lang/String;

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;->this$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mKillAppClipsBroadcastIntent:Landroid/content/Intent;

    iget-object v0, p2, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mNoteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

    sget-object v1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->APP_CLIPS:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    iget-object p2, p2, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/notetask/NoteTaskController;->showNoteTaskAsUser(Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;)V

    iget-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;->this$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity$AppClipsResultReceiver;->this$0:Lcom/android/systemui/screenshot/appclips/AppClipsTrampolineActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
