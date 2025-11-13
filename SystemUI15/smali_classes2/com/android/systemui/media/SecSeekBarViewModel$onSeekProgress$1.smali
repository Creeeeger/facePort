.class public final Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $bar:Landroid/widget/SeekBar;

.field public final synthetic $position:J

.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;JLandroid/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iput-wide p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->$position:J

    iput-object p4, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->$bar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iget-boolean v0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->$position:J

    iget-object v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->$bar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->$position:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->$bar:Landroid/widget/SeekBar;

    const/16 v1, 0x29

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iget-object v1, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    iget-wide v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;->$position:J

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v2, 0x6f

    const/4 v3, 0x0

    invoke-static {v1, v3, p0, v3, v2}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;ZLjava/lang/Integer;ZI)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    :cond_2
    return-void
.end method
