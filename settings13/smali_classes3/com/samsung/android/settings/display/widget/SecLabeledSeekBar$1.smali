.class Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;
.super Ljava/lang/Object;
.source "SecLabeledSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecLabeledSeekBar.onProgressChanged: progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenZoomEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "listener >>>"

    .line 152
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->-$$Nest$fgetmOnSeekBarChangeListener(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->-$$Nest$fgetmOnSeekBarChangeListener(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->-$$Nest$msendClickEventForAccessibility(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;I)V

    goto :goto_0

    :cond_0
    const-string v0, "listener=null"

    .line 157
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "listener <<<"

    .line 159
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->-$$Nest$fgetmLastProgress(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)I

    move-result v0

    if-eq p2, v0, :cond_2

    if-eqz p3, :cond_1

    const/16 p3, 0x29

    .line 163
    invoke-static {p3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p3

    .line 162
    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    .line 165
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->-$$Nest$fputmLastProgress(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;I)V

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onProgressChanged: update progress="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecLabeledSeekBar.onStartTrackingTouch: progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->-$$Nest$fgetmLastProgress(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenZoomEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "listener >>>"

    .line 140
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->-$$Nest$fgetmOnSeekBarChangeListener(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-static {p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->-$$Nest$fgetmOnSeekBarChangeListener(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_0
    const-string p0, "listener=null"

    .line 144
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "listener <<<"

    .line 146
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecLabeledSeekBar.onStopTrackingTouch: progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->-$$Nest$fgetmLastProgress(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenZoomEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "listener >>>"

    .line 128
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-static {v0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->-$$Nest$fgetmOnSeekBarChangeListener(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$1;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-static {p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->-$$Nest$fgetmOnSeekBarChangeListener(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_0
    const-string p0, "listener=null"

    .line 132
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "listener <<<"

    .line 134
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
