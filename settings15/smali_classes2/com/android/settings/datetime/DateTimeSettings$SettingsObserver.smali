.class public final Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/datetime/DateTimeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/datetime/DateTimeSettings;Landroid/os/Handler;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    sget-object v0, Lcom/android/settings/datetime/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "auto_time"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    move v1, v0

    :cond_1
    const-string p1, "SettingsObserver onChange getAutoState() return : "

    const-string v0, "DateTimeSettings"

    invoke-static {p1, v0, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    :cond_2
    return-void
.end method
