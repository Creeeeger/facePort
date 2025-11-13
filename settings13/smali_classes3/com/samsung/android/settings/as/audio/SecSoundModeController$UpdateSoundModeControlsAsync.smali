.class Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;
.super Landroid/os/AsyncTask;
.source "SecSoundModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecSoundModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateSoundModeControlsAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mControllerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/settings/as/audio/SecSoundModeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V
    .locals 1

    .line 513
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 514
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 510
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 510
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 524
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    if-nez p0, :cond_0

    return-void

    .line 527
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->-$$Nest$mupdateControls(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V

    return-void
.end method
