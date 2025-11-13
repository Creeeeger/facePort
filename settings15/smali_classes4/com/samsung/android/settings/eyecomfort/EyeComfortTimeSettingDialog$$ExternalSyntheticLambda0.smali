.class public final synthetic Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "save Time : start time = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", end time = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    const-string v0, "EyeComfortTimeSettingDialog"

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    int-to-long v0, p2

    const-string p2, "blue_light_filter_on_time"

    const/4 v2, -0x2

    invoke-static {p1, p2, v0, v1, v2}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    int-to-long v0, p2

    const-string p2, "blue_light_filter_off_time"

    invoke-static {p1, p2, v0, v1, v2}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    const p1, 0x9d0d

    const/16 p2, 0x107e

    invoke-static {p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    int-to-long v0, p1

    const/16 p1, 0x1cf4

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    int-to-long p0, p0

    const/16 v0, 0x1cf5

    invoke-static {p2, v0, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method
