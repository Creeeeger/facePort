.class public final Lcom/android/systemui/media/SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $after:Landroid/media/session/PlaybackState;

.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/media/session/PlaybackState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$2;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$2;->$after:Landroid/media/session/PlaybackState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$2;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->oaMusicChipController:Lcom/android/systemui/media/OAMusicChipController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$2;->$after:Landroid/media/session/PlaybackState;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/OAMusicChipController;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_0
    return-void
.end method
