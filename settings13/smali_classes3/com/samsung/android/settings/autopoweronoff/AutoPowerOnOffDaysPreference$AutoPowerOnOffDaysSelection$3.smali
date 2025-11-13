.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;
.super Ljava/lang/Object;
.source "AutoPowerOnOffDaysPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;Landroid/content/Context;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

.field final synthetic val$this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    iput-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->val$this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 189
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fgetmDisableListeners(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fputmDisableListeners(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;Z)V

    .line 193
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fgetDAYS(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)[I

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_1

    .line 194
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fgetmDaysCheckBox(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)[Landroid/widget/CheckBox;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fgetmSelectionDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->setItem(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fputmDisableListeners(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;Z)V

    return-void
.end method
