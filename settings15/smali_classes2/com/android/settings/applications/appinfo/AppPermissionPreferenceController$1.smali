.class public final Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPermissionSummaryResult(ILjava/util/List;I)V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_0

    const p1, 0x7f141f75

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-lez p3, :cond_1

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120053

    invoke-virtual {p2, v2, p3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_2

    const p1, 0x7f141f74

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
