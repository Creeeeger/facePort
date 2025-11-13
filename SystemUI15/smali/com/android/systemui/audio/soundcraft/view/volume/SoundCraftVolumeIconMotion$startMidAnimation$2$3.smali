.class public final Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->iconRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
