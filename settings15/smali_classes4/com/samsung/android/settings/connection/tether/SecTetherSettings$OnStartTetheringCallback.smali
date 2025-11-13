.class public final Lcom/samsung/android/settings/connection/tether/SecTetherSettings$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mTetherSettings:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V
    .locals 1

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$OnStartTetheringCallback;->mTetherSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onTetheringFailed()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$OnStartTetheringCallback;->mTetherSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    sget v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->updateState$2$1()V

    return-void
.end method

.method public final onTetheringStarted()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings$OnStartTetheringCallback;->mTetherSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    sget v0, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->updateState$2$1()V

    return-void
.end method
