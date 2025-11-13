.class public final synthetic Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    iput p2, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    iget p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/PluginWallpaperController$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/PluginWallpaperController$1;->onMultipackApplied(I)V

    return-void
.end method
