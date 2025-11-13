.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;
.super Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;
.source "AutoPowerOnOffDaysPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;Landroid/content/Context;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;Landroid/content/Context;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    return-void
.end method
