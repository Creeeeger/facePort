.class public final Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener$1;->this$1:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener$1;->this$1:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onKeyEvent : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SlowKeyOnKeyListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance p1, Landroid/view/KeyEvent;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v12

    move-object v1, p1

    move-wide v2, v4

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener;->mKeyEventHandler:Lcom/samsung/android/settings/accessibility/dexterity/SlowKeysPreferenceFragment$SlowKeyOnKeyListener$1;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
