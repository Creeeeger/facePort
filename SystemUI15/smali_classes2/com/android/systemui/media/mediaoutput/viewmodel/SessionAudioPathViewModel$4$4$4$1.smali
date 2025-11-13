.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$4$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$4$4$1;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$4$4$1;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
