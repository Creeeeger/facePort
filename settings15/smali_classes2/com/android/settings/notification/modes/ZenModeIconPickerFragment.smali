.class public Lcom/android/settings/notification/modes/ZenModeIconPickerFragment;
.super Lcom/android/settings/notification/modes/ZenModeFragmentBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/modes/ZenModesFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;

    new-instance v2, Lcom/android/settings/notification/modes/IconOptionsProviderImpl;

    iget-object v3, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/notification/modes/IconOptionsProviderImpl;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/notification/modes/IconOptionsProviderImpl;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x8e

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700e5

    return p0
.end method
