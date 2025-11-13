.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$8;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$8;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;

    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine$4$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    sget p0, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->$r8$clinit:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$CanvasEngine;->runAsWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
