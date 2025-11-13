.class Lcom/android/settings/datausage/DataUsageSummary$3;
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

    .line 253
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPcoSettingObserver onChange(selfChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataUsageSummary"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v1, "usage"

    invoke-virtual {p1, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_0

    const-string p0, "\'usage\' preference category not found"

    .line 259
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 264
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_3

    .line 269
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_data_by_pco"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 272
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPcoSettingObserver restrictBackgroundByPco: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmDataSaverPreference(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 275
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmDataSaverPreference(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 276
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fputmDataSaverPreference(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)V

    goto :goto_1

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    .line 280
    invoke-virtual {v1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isAdmin()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmDataSaverPreferencePco(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fputmDataSaverPreference(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fgetmDataSaverPreference(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 287
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$mupdateState(Lcom/android/settings/datausage/DataUsageSummary;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string p0, "Returning due to no mobile data or not admin"

    .line 281
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_3
    const-string p0, "Invalid context or content-resolver"

    .line 265
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
