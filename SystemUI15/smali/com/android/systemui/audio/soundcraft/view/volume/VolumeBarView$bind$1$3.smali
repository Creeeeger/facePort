.class public final Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$bind$1$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->soundCraftVolumeMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeMotion;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_3

    iget-boolean p0, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_3
    const p0, 0x3f851eb8    # 1.04f

    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->soundCraftVolumeMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeMotion;

    if-nez p1, :cond_5

    move-object p1, v0

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_6

    move-object v1, v0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    move-object v0, p0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_8

    iget-boolean p0, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_8
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_2
    return-void
.end method
