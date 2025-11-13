.class public final synthetic Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/video/VideoEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoEngine;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->TAG:Ljava/lang/String;

    const-string v1, "mVideoPauseDispatcher: video pause timer expired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoEngine;->pauseVideo()V

    return-void
.end method
