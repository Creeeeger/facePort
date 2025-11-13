.class public final Lcom/android/settings/applications/AppsPreferenceController$1;
.super Lcom/android/settings/applications/InstalledAppCounter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/AppsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppsPreferenceController;Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController$1;->this$0:Lcom/android/settings/applications/AppsPreferenceController;

    const/4 p1, -0x1

    invoke-direct {p0, p2, p1, p3}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method public final onCountComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController$1;->this$0:Lcom/android/settings/applications/AppsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/AppsPreferenceController$1;->this$0:Lcom/android/settings/applications/AppsPreferenceController;

    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    invoke-static {p0}, Lcom/android/settings/applications/AppsPreferenceController;->access$000(Lcom/android/settings/applications/AppsPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f142a74

    invoke-static {p0, p1, v1}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/AppsPreferenceController$1;->this$0:Lcom/android/settings/applications/AppsPreferenceController;

    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mAllAppsInfoPref:Landroidx/preference/Preference;

    invoke-static {p0}, Lcom/android/settings/applications/AppsPreferenceController;->access$100(Lcom/android/settings/applications/AppsPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f1403d5

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
