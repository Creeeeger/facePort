.class public final Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $muteView:Landroid/view/View;

.field public final synthetic $noteView:Landroid/view/View;

.field public final synthetic $splash:Landroid/view/View;

.field public final synthetic $stream:I

.field public final synthetic $targetState:I

.field public final synthetic $vibrateView:Landroid/view/View;

.field public final synthetic $wlView:Landroid/view/View;

.field public final synthetic $wsView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;


# direct methods
.method public constructor <init>(ILcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$targetState:I

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    iput p3, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$stream:I

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$noteView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$wsView:Landroid/view/View;

    iput-object p6, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$wlView:Landroid/view/View;

    iput-object p7, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$vibrateView:Landroid/view/View;

    iput-object p8, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$muteView:Landroid/view/View;

    iput-object p9, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$splash:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$targetState:I

    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$noteView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$wsView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$wlView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$vibrateView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$muteView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$splash:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->startMaxAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    iget v1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$stream:I

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$noteView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$wsView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$wlView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$vibrateView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$muteView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion$startMidAnimation$2$2;->$splash:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method
