.class public final Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference$LongPressHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference$LongPressHandler;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference$LongPressHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;->onDeleteButtonClicked()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;->onAddButtonClicked()V

    :cond_1
    :goto_0
    return-void
.end method
