.class public final Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$handler$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$handler$1;->this$0:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper$handler$1;->this$0:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;

    iget-object p1, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->windowView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;->needFullscreen:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->show(I)V

    :cond_1
    :goto_0
    return-void
.end method
