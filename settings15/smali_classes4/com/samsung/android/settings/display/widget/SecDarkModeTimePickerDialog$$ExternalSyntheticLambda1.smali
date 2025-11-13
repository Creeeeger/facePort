.class public final synthetic Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTabLayout:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    iget-object p1, p1, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    const/4 p2, 0x0

    aget v0, p1, p2

    const/4 v1, 0x1

    aget p1, p1, v1

    const-string/jumbo v2, "save Time : start time = "

    const-string v3, ", end time = "

    const-string v4, "SecDarkModeTimePickerDialog"

    invoke-static {v2, v3, v0, p1, v4}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_night_theme_on_time"

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_night_theme_off_time"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-virtual {p0, p2, v2, v0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->onTimeSet(III)V

    div-int/lit8 p2, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {p0, v1, p2, p1}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->onTimeSet(III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
