.class public final Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $e:Landroid/view/MotionEvent;

.field public final synthetic $it:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

.field public final synthetic $v:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;Landroid/view/View;Lcom/android/systemui/qs/bar/VolumeSeekBar;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;->$it:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;->$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;->$e:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;->$it:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;->$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isLongPressed:Z

    iget-object v2, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    iget-object v2, v2, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getModeInternal()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->qsDetailControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->soundCraftQpDetailAdapterLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSDetailController;->showTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->toast:Landroid/widget/Toast;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->context:Landroid/content/Context;

    const v3, 0x7f131281

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->toast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;->this$0:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar$initialize$1$1$1;->$e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, v0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QPPE1035"

    const-string v1, "location"

    const-string v2, "quick panel"

    const-string v3, "QUICK_PANEL_LAYOUT"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
