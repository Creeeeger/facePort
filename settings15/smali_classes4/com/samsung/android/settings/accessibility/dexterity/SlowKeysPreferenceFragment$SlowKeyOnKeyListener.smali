.class public final Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public mCurrentKeyEvent:Landroid/view/KeyEvent;

.field public final mKeyEventHandler:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener$1;

.field public mView:Landroid/view/View;

.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener$1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mKeyEventHandler:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener$1;

    iget-object p0, p1, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->getAccessibilitySlowKeysThreshold(Landroid/content/Context;)I

    move-result p0

    int-to-long v0, p0

    iput-wide v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mSlowKeysPeriodMilli:J

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const-string/jumbo p2, "onKey() action : "

    const-string v0, ", keyCode :"

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mKeyEventFinished : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    iget-boolean v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mKeyEventFinished:Z

    const-string v1, "SlowKeyOnKeyListener"

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    iput-boolean v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mKeyEventFinished:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    iget-wide v4, p1, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mCurrentTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p1, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mSlowKeysPeriodMilli:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const-string/jumbo p1, "onKey() removeMessages handler"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mKeyEventHandler:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return p2

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    return p2

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    iget-boolean v1, p1, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mKeyEventFinished:Z

    if-eqz v1, :cond_3

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mCurrentTime:J

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mKeyEventHandler:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener$1;

    iget-object p3, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    iget-wide v1, p3, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mSlowKeysPeriodMilli:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;

    iput-boolean p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment;->mKeyEventFinished:Z

    return v0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    if-eqz p0, :cond_4

    move p2, v0

    :cond_4
    return p2
.end method
