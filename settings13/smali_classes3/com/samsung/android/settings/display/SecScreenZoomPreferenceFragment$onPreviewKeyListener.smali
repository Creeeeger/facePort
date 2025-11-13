.class Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;
.super Ljava/lang/Object;
.source "SecScreenZoomPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onPreviewKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;-><init>(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKey: code="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " action="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecScreenZoomPreferenceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_4

    .line 235
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/16 v0, 0x15

    const-string v1, "ScreenZoomEvent"

    if-eq p2, v0, :cond_2

    const/16 v0, 0x16

    if-eq p2, v0, :cond_0

    const/16 v0, 0x45

    if-eq p2, v0, :cond_2

    const/16 v0, 0x51

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "plus key: progress="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_1
    return p3

    :cond_2
    if-lez p1, :cond_3

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minus key: progress="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment$onPreviewKeyListener;->this$0:Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->-$$Nest$fgetmSeekBar(Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;)Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_3
    return p3

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
