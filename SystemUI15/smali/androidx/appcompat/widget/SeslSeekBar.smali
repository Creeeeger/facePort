.class public Landroidx/appcompat/widget/SeslSeekBar;
.super Landroidx/appcompat/widget/SeslAbsSeekBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0405b0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/SeslAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onProgressRefresh(FZI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onProgressRefresh(FZI)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p3, p2}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch()V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    return-void
.end method
