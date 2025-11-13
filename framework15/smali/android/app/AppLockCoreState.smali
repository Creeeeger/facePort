.class public Landroid/app/AppLockCoreState;
.super Ljava/lang/Object;
.source "AppLockCoreState.java"


# static fields
.field private static final blacklist APPLOCK_ENABLED:Ljava/lang/String; = "applock_enabled"

.field private static final blacklist APPLOCK_LOCKED_APPS_CLASSS:Ljava/lang/String; = "applock_locked_classes"

.field private static final blacklist APPLOCK_LOCKED_APPS_PACKAGES:Ljava/lang/String; = "applock_locked_packages"

.field private static final blacklist APPLOCK_SHARED_PREF:Ljava/lang/String; = "applock_shared_preference"

.field private static final blacklist APPLOCK_TYPE:Ljava/lang/String; = "applock_type"

.field private static final blacklist SSECURE_HIDDEN_APPS_PACKAGES:Ljava/lang/String; = "ssecure_hidden_apps_packages"

.field private static final blacklist TAG:Ljava/lang/String; = "AppLockCoreState"

.field private static blacklist mPref:Landroid/content/SharedPreferences;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/AppLockCoreState;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public blacklist getApplockLockedAppsClass()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "applock_locked_classes"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public blacklist getApplockLockedAppsPackage()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "applock_locked_packages"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public blacklist getApplockType()I
    .locals 3

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "applock_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public blacklist getSsecureHiddenAppsPackages()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "ssecure_hidden_apps_packages"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public blacklist initializeSharedPreference()V
    .locals 3

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/AppLockCoreState;->mContext:Landroid/content/Context;

    const-string v1, "applock_shared_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public blacklist isApplockEnabled()Z
    .locals 3

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "applock_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public blacklist setApplockEnabled(Z)V
    .locals 2

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "applock_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public blacklist setApplockLockedAppsClass(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "applock_locked_classes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public blacklist setApplockLockedAppsPackage(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "applock_locked_packages"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public blacklist setApplockType(I)V
    .locals 2

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "applock_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public blacklist setSsecureHiddenAppsPackages(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/AppLockCoreState;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ssecure_hidden_apps_packages"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
