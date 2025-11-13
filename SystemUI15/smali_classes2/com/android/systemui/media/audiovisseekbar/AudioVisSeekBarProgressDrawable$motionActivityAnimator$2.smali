.class final Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2;->this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    new-instance v8, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    sget-object v0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/Interpolators;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/easing/Interpolators;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/media/audiovisseekbar/utils/easing/Interpolators;->MOTION_ACTIVITY_EASING:Landroid/view/animation/PathInterpolator;

    new-instance v5, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2$1;

    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2;->this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    invoke-direct {v5, p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2$1;-><init>(Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;-><init>(FJLandroid/view/animation/Interpolator;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method
