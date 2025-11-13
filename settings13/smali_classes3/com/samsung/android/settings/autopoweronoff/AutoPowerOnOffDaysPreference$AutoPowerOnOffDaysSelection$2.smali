.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;
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

.field final synthetic val$day:I

.field final synthetic val$this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;I)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    iput-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->val$this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iput p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fgetmDisableListeners(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fputmDisableListeners(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;Z)V

    .line 175
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fgetmSelectionDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->val$day:I

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->setItem(IZ)V

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "day = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->val$day:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mDaysOfWeek.getCoded() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    iget-object p2, p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->-$$Nest$fgetmDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCheckedChanged"

    invoke-static {p2, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fgetmDaysCheckBox(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)[Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-static {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fgetmSelectionDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->isAllSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->-$$Nest$fputmDisableListeners(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;Z)V

    return-void
.end method
