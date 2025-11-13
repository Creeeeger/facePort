.class public final Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$UpdateSoundModeControlsAsync;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mControllerWeakReference:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$UpdateSoundModeControlsAsync;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->-$$Nest$mupdateControls(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V

    :goto_0
    return-void
.end method
