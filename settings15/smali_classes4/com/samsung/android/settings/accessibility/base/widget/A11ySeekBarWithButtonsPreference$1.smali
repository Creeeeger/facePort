.class public final Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference$1;->val$v:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;

    iget-boolean v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;->isLongKeyProcessing:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;->longPressHandler:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference$LongPressHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a04c9

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;

    const-string v1, "A11ySeekBarWithButtonsPreference"

    const-string v2, "InterruptedException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method
