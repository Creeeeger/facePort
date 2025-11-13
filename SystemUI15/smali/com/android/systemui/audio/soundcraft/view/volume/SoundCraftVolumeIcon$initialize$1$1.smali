.class public final Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$initialize$1$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->init:Z

    iput-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->shouldUpdateIcon:Z

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->updateLayout$3(I)V

    return-void
.end method
