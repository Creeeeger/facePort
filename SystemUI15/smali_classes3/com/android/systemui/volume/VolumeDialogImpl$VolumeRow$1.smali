.class public final Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->mHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_6

    :cond_4
    :goto_3
    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_8
    :goto_6
    const/4 p0, 0x0

    return p0
.end method
