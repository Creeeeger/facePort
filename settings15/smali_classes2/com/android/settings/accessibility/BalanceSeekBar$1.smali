.class public final Lcom/android/settings/accessibility/BalanceSeekBar$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/BalanceSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/BalanceSeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    iget v1, v0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenter:I

    if-eq p2, v1, :cond_0

    int-to-float v2, p2

    int-to-float v3, v1

    iget v0, v0, Lcom/android/settings/accessibility/BalanceSeekBar;->mSnapThreshold:F

    sub-float/2addr v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    int-to-float v3, v1

    add-float/2addr v3, v0

    cmpg-float v0, v2, v3

    if-gez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    move p2, v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    iget v1, v0, Lcom/android/settings/accessibility/BalanceSeekBar;->mLastProgress:I

    if-eq p2, v1, :cond_3

    iget v1, v0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenter:I

    if-eq p2, v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMin()I

    move-result v0

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    iput p2, v0, Lcom/android/settings/accessibility/BalanceSeekBar;->mLastProgress:I

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    iget v1, v0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenter:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    iget-object v0, v0, Lcom/android/settings/accessibility/BalanceSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "master_balance"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    iget-object v0, v0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_5
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    iget-object v0, v0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    iget-object v0, v0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
