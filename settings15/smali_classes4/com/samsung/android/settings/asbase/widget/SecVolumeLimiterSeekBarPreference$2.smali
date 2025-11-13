.class public final Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setPressed(Z)V

    :cond_3
    :goto_1
    return v1
.end method
