.class public final Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    return-void
.end method


# virtual methods
.method public final onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog$1;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    const/4 v1, 0x0

    iget-object v0, v0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    iput p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mTabIndex:I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mStartTime:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->updatePicker$2(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->mEndTime:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->updatePicker$2(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
