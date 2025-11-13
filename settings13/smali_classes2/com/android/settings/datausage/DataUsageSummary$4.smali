.class Lcom/android/settings/datausage/DataUsageSummary$4;
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

    .line 294
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$4;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 296
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$4;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "udsState"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$4;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmUDSPreference(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/SecPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$4;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmUDSPreference(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/SecPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$4;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
