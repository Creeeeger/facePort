.class Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityOptionsCompat$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$callbackHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityOptionsCompat$1;->val$callback:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityOptionsCompat$1;->val$callbackHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted(J)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityOptionsCompat$1;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityOptionsCompat$1;->val$callbackHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
