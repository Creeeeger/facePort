.class Landroidx/picker/widget/SeslSleepTimePicker$1;
.super Ljava/lang/Object;
.source "SeslSleepTimePicker.java"

# interfaces
.implements Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslSleepTimePicker;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslSleepTimePicker;

.field final synthetic val$BedTimeCenterTextViewArray:[Landroid/widget/TextView;

.field final synthetic val$BedTimeTextViewArray:[Landroid/widget/TextView;

.field final synthetic val$WakeUpTimeCenterTextViewArray:[Landroid/widget/TextView;

.field final synthetic val$WakeUpTimeTextViewArray:[Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;[Landroid/widget/TextView;[Landroid/widget/TextView;[Landroid/widget/TextView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iput-object p2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$WakeUpTimeTextViewArray:[Landroid/widget/TextView;

    iput-object p3, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$WakeUpTimeCenterTextViewArray:[Landroid/widget/TextView;

    iput-object p4, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$BedTimeTextViewArray:[Landroid/widget/TextView;

    iput-object p5, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$BedTimeCenterTextViewArray:[Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChangedBedTime(Landroidx/picker/widget/SeslCircularSeekBarView;FFZ)V
    .locals 0

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onProgressChangedBedTime : BedTimePosition "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "SleepTimePicker"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p3}, Landroidx/picker/util/SeslSleepTimePickerUtil;->convertToTime(F)F

    move-result p3

    invoke-static {p2, p3}, Landroidx/picker/widget/SeslSleepTimePicker;->access$002(Landroidx/picker/widget/SeslSleepTimePicker;F)F

    .line 174
    iget-object p2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p2}, Landroidx/picker/widget/SeslSleepTimePicker;->access$100(Landroidx/picker/widget/SeslSleepTimePicker;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x29

    .line 175
    invoke-static {p1, p2}, Landroidx/picker/util/SeslSleepTimePickerUtil;->performHapticFeedback(Landroid/view/View;I)V

    .line 177
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$200(Landroidx/picker/widget/SeslSleepTimePicker;)Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$200(Landroidx/picker/widget/SeslSleepTimePicker;)Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;

    move-result-object p1

    iget-object p2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-virtual {p2}, Landroidx/picker/widget/SeslSleepTimePicker;->getBedTimeInMinute()F

    move-result p2

    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->getWakeUpTimeInMinute()F

    move-result p0

    invoke-interface {p1, p2, p0}, Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;->onSleepTimeChanged(FF)V

    :cond_1
    return-void
.end method

.method public onProgressChangedWakeupTime(Landroidx/picker/widget/SeslCircularSeekBarView;FFZ)V
    .locals 0

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onProgressChangedWakeupTime : WakeUpTimePosition "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "SleepTimePicker"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p3}, Landroidx/picker/util/SeslSleepTimePickerUtil;->convertToTime(F)F

    move-result p3

    invoke-static {p2, p3}, Landroidx/picker/widget/SeslSleepTimePicker;->access$302(Landroidx/picker/widget/SeslSleepTimePicker;F)F

    .line 186
    iget-object p2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p2}, Landroidx/picker/widget/SeslSleepTimePicker;->access$400(Landroidx/picker/widget/SeslSleepTimePicker;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x29

    .line 187
    invoke-static {p1, p2}, Landroidx/picker/util/SeslSleepTimePickerUtil;->performHapticFeedback(Landroid/view/View;I)V

    .line 189
    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$200(Landroidx/picker/widget/SeslSleepTimePicker;)Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$200(Landroidx/picker/widget/SeslSleepTimePicker;)Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;

    move-result-object p1

    iget-object p2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-virtual {p2}, Landroidx/picker/widget/SeslSleepTimePicker;->getBedTimeInMinute()F

    move-result p2

    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->getWakeUpTimeInMinute()F

    move-result p0

    invoke-interface {p1, p2, p0}, Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;->onSleepTimeChanged(FF)V

    :cond_1
    return-void
.end method

.method public onSelectBedTimeIcon()V
    .locals 8

    const-string v0, "SleepTimePicker"

    const-string v1, "onSelectedBedTimeIcon"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSleepTimePicker;->access$600(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/picker/R$color;->sesl_bed_wakeup_time_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 225
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$700(Landroidx/picker/widget/SeslSleepTimePicker;)I

    move-result v1

    .line 226
    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$BedTimeTextViewArray:[Landroid/widget/TextView;

    const-wide/16 v6, 0x64

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    .line 227
    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1100(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v4}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1300(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v5}, Landroidx/picker/widget/SeslSleepTimePicker;->access$900(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v2, v3, v4, v5, v6}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1200(Landroidx/picker/widget/SeslSleepTimePicker;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;F)V

    .line 228
    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$BedTimeCenterTextViewArray:[Landroid/widget/TextView;

    const-wide/16 v6, 0x32

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    return-void
.end method

.method public onSelectMiddleHandler()V
    .locals 8

    const-string v0, "SleepTimePicker"

    const-string v1, "onSelectedMiddleHandler"

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSleepTimePicker;->access$600(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/picker/R$color;->sesl_bed_wakeup_time_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 235
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$700(Landroidx/picker/widget/SeslSleepTimePicker;)I

    move-result v1

    .line 236
    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$BedTimeTextViewArray:[Landroid/widget/TextView;

    const-wide/16 v6, 0x64

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    .line 237
    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$WakeUpTimeTextViewArray:[Landroid/widget/TextView;

    invoke-static/range {v2 .. v7}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    return-void
.end method

.method public onSelectWakeUpTimeIcon()V
    .locals 8

    const-string v0, "SleepTimePicker"

    const-string v1, "onSelectedWakeUpTimeIcon"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSleepTimePicker;->access$600(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/picker/R$color;->sesl_bed_wakeup_time_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 215
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$700(Landroidx/picker/widget/SeslSleepTimePicker;)I

    move-result v1

    .line 216
    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$WakeUpTimeTextViewArray:[Landroid/widget/TextView;

    const-wide/16 v6, 0x64

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    .line 217
    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v2}, Landroidx/picker/widget/SeslSleepTimePicker;->access$900(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v4}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1000(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v5}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1100(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/high16 v6, -0x3db80000    # -50.0f

    invoke-static {v2, v3, v4, v5, v6}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1200(Landroidx/picker/widget/SeslSleepTimePicker;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;F)V

    .line 218
    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$WakeUpTimeCenterTextViewArray:[Landroid/widget/TextView;

    const-wide/16 v6, 0x32

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/picker/widget/SeslCircularSeekBarView;)V
    .locals 1

    const-string p1, "SleepTimePicker"

    const-string v0, "onStartTrackingTouch"

    .line 205
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$200(Landroidx/picker/widget/SeslSleepTimePicker;)Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$200(Landroidx/picker/widget/SeslSleepTimePicker;)Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSleepTimePicker;->getBedTimeInMinute()F

    move-result v0

    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->getWakeUpTimeInMinute()F

    move-result p0

    invoke-interface {p1, v0, p0}, Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;->onStartSleepTimeChanged(FF)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroidx/picker/widget/SeslCircularSeekBarView;)V
    .locals 1

    const-string p1, "SleepTimePicker"

    const-string v0, "onStopTrackingTouch"

    .line 196
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$500(Landroidx/picker/widget/SeslSleepTimePicker;)V

    .line 198
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$200(Landroidx/picker/widget/SeslSleepTimePicker;)Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$200(Landroidx/picker/widget/SeslSleepTimePicker;)Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;

    move-result-object p1

    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSleepTimePicker;->getBedTimeInMinute()F

    move-result v0

    iget-object p0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSleepTimePicker;->getWakeUpTimeInMinute()F

    move-result p0

    invoke-interface {p1, v0, p0}, Landroidx/picker/widget/SeslSleepTimePicker$OnSleepTimeChangedListener;->onStopSleepTimeChanged(FF)V

    :cond_0
    return-void
.end method

.method public onUnselectBedTimeIcon()V
    .locals 8

    const-string v0, "SleepTimePicker"

    const-string v1, "onUnselectedBedTimeIcon"

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSleepTimePicker;->access$700(Landroidx/picker/widget/SeslSleepTimePicker;)I

    move-result v0

    .line 254
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$600(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/picker/R$color;->sesl_bed_wakeup_time_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 255
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$BedTimeCenterTextViewArray:[Landroid/widget/TextView;

    const-wide/16 v5, 0x32

    move v3, v0

    move v4, v7

    invoke-static/range {v1 .. v6}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    .line 256
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1300(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1100(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v4}, Landroidx/picker/widget/SeslSleepTimePicker;->access$900(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1400(Landroidx/picker/widget/SeslSleepTimePicker;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;F)V

    .line 257
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$BedTimeTextViewArray:[Landroid/widget/TextView;

    const-wide/16 v5, 0xc8

    move v3, v0

    move v4, v7

    invoke-static/range {v1 .. v6}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    return-void
.end method

.method public onUnselectMiddleHandler()V
    .locals 8

    const-string v0, "SleepTimePicker"

    const-string v1, "onUnselectedMiddleHandler"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSleepTimePicker;->access$700(Landroidx/picker/widget/SeslSleepTimePicker;)I

    move-result v0

    .line 264
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$600(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/picker/R$color;->sesl_bed_wakeup_time_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 265
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$BedTimeTextViewArray:[Landroid/widget/TextView;

    const-wide/16 v5, 0xc8

    move v3, v0

    move v4, v7

    invoke-static/range {v1 .. v6}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    .line 266
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$WakeUpTimeTextViewArray:[Landroid/widget/TextView;

    invoke-static/range {v1 .. v6}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    return-void
.end method

.method public onUnselectWakeUpTimeIcon()V
    .locals 8

    const-string v0, "SleepTimePicker"

    const-string v1, "onUnselectedWakeUpTimeIcon"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v0}, Landroidx/picker/widget/SeslSleepTimePicker;->access$700(Landroidx/picker/widget/SeslSleepTimePicker;)I

    move-result v0

    .line 244
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$600(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/picker/R$color;->sesl_bed_wakeup_time_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 245
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$WakeUpTimeCenterTextViewArray:[Landroid/widget/TextView;

    const-wide/16 v5, 0x32

    move v3, v0

    move v4, v7

    invoke-static/range {v1 .. v6}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    .line 246
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v1}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1000(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v3}, Landroidx/picker/widget/SeslSleepTimePicker;->access$900(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    invoke-static {v4}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1100(Landroidx/picker/widget/SeslSleepTimePicker;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/high16 v5, -0x3db80000    # -50.0f

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/picker/widget/SeslSleepTimePicker;->access$1400(Landroidx/picker/widget/SeslSleepTimePicker;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;F)V

    .line 247
    iget-object v1, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->this$0:Landroidx/picker/widget/SeslSleepTimePicker;

    iget-object v2, p0, Landroidx/picker/widget/SeslSleepTimePicker$1;->val$WakeUpTimeTextViewArray:[Landroid/widget/TextView;

    const-wide/16 v5, 0xc8

    move v3, v0

    move v4, v7

    invoke-static/range {v1 .. v6}, Landroidx/picker/widget/SeslSleepTimePicker;->access$800(Landroidx/picker/widget/SeslSleepTimePicker;[Landroid/widget/TextView;IIJ)V

    return-void
.end method
