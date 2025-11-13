.class public Lcom/android/settings/Settings$ZenModeScheduleRuleSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZenModeScheduleRuleSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 558
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 562
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 563
    sget p1, Lcom/android/settings/R$layout;->sec_dnd_schedule_rule_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    return-void
.end method
