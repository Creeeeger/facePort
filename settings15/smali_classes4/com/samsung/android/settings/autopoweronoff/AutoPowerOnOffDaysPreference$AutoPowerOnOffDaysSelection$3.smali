.class public final Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;

    iget-boolean v0, p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mDisableListeners:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mDisableListeners:Z

    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;

    iget-object v2, v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->DAYS:[I

    array-length v2, v2

    if-ge p1, v2, :cond_2

    iget-object v1, v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mDaysCheckBox:[Landroid/widget/CheckBox;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;

    iget-object v1, v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mSelectionDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    if-eqz p2, :cond_1

    iget v2, v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    shl-int v3, v0, p1

    or-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    goto :goto_1

    :cond_1
    iget v2, v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    shl-int v3, v0, p1

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mDisableListeners:Z

    return-void
.end method
