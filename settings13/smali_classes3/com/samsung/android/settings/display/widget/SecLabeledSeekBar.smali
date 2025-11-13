.class public Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;
.super Landroid/widget/SeekBar;
.source "SecLabeledSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;
    }
.end annotation


# instance fields
.field private final mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

.field private mLabels:[Ljava/lang/String;

.field private mLastProgress:I

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastProgress(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLastProgress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnSeekBarChangeListener(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastProgress(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLastProgress:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msendClickEventForAccessibility(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->sendClickEventForAccessibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLastProgress:I

    .line 124
    new-instance p1, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;-><init>(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 75
    new-instance p2, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;-><init>(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    .line 76
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 78
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private sendClickEventForAccessibility(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

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

.method public setLabels([I)V
    .locals 3

    .line 93
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLabels:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 94
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLabels:[Ljava/lang/String;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabels([III)V
    .locals 2

    sub-int/2addr p3, p2

    .line 100
    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLabels:[Ljava/lang/String;

    const/4 p3, 0x0

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mLabels:[Ljava/lang/String;

    array-length v1, v0

    if-ge p3, v1, :cond_0

    add-int v1, p3, p2

    .line 102
    aget v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 110
    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOnSeekBarChangeListener: l="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
