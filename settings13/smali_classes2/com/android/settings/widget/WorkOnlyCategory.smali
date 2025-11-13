.class public Lcom/android/settings/widget/WorkOnlyCategory;
.super Landroidx/preference/PreferenceCategory;
.source "WorkOnlyCategory.java"

# interfaces
.implements Lcom/android/settings/SelfAvailablePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 40
    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isAppSeparationModeEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string/jumbo p0, "user"

    .line 43
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 44
    invoke-static {p0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 45
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getManagedProfiles(Landroid/os/UserManager;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v0
.end method
