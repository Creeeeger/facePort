.class public final Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;

    iget-object p0, p1, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->getAccessibilityBounceKeysThreshold(Landroid/content/Context;)I

    move-result p0

    int-to-long v0, p0

    iput-wide v0, p1, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysPeriodMilli:J

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mIsBlocking:Z

    const/4 p0, -0x1

    iput p0, p1, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mOldKeyCode:I

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;

    iget-boolean v1, p3, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mIsBlocking:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p3, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mOldKeyCode:I

    if-ne v1, p2, :cond_1

    iget-object p1, p3, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysHandler:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysHandler:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$1;

    iget-wide p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysPeriodMilli:J

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v2

    :cond_1
    if-nez p1, :cond_2

    iput p2, p3, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mOldKeyCode:I

    :cond_2
    if-ne p1, v2, :cond_3

    const-string p1, "BounceKeysPreferenceFragment"

    const-string p2, "BounceKeys is activated"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysHandler:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$1;

    iget-wide v3, p1, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mBounceKeysPeriodMilli:J

    invoke-virtual {p2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$BounceKeysOnKeyListener;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mIsBlocking:Z

    :cond_3
    return v0
.end method
