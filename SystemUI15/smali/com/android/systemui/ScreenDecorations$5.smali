.class public final Lcom/android/systemui/ScreenDecorations$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p1}, Lcom/android/systemui/ScreenDecorations;->hasOverlays()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v0, p1, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda9;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method
