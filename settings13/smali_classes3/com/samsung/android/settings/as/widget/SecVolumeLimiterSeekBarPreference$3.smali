.class Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$3;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    .line 181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmDisabledSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 187
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setPressed(Z)V

    goto :goto_1

    .line 182
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmDisabledSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 183
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference$3;->this$0:Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/as/widget/SecVolumeLimiterSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    :cond_3
    :goto_1
    return v0
.end method
