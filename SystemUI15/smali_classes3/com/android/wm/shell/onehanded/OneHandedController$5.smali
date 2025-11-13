.class public final Lcom/android/wm/shell/onehanded/OneHandedController$5;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$onChangeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedController$5;->val$onChangeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$5;->val$onChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
