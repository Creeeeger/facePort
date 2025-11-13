.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$1;
.super Ljava/lang/Object;
.source "AutoPowerOnOffDaysPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 154
    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$1;->this$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    iput-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$1;->val$this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 158
    sget p0, Lcom/android/settings/R$id;->day_item_checkbox:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 159
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
