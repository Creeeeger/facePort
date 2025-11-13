.class public Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;
.super Landroid/widget/SeekBar;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAccessHelper:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

.field public mLabels:[Ljava/lang/String;

.field public mLastProgress:I

.field public mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public final mProxySeekBarListener:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLastProgress:I

    new-instance p1, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;-><init>(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)V

    new-instance p2, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;-><init>(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mAccessHelper:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mAccessHelper:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setOnSeekBarChangeListener: l="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenZoomEvent"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mAccessHelper:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
