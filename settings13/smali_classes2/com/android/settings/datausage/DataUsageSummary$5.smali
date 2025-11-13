.class Lcom/android/settings/datausage/DataUsageSummary$5;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 309
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmMobileDataATT(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmMobileDataATT(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 312
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmRoamingATT(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmMobileDataATT(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 315
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmRoamingATT(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 319
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportFeatureDataUsageMobileDataOnlyApps(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 320
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 321
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmMobileDataOnlyPreference(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 323
    :cond_2
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$5;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmMobileDataOnlyPreference(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method
