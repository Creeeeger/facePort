.class public final Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$6;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    sget v0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$6;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->voiceBoostView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/BaseAudioEffectItemView;->enable(Z)V

    return-void
.end method
