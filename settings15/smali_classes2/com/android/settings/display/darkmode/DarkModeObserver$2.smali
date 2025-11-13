.class public final Lcom/android/settings/display/darkmode/DarkModeObserver$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/display/darkmode/DarkModeObserver;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/darkmode/DarkModeObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver$2;->this$0:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver$2;->this$0:Lcom/android/settings/display/darkmode/DarkModeObserver;

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
