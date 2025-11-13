.class public final synthetic Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mAutoReleaseHandler: auto release timer expired. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "mAutoReleaseHandler: not need release"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->release()V

    :goto_0
    return-void
.end method
