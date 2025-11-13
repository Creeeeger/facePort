.class public Landroid/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceManager$OnActivityResultListener;,
        Landroid/preference/PreferenceManager$OnActivityStopListener;,
        Landroid/preference/PreferenceManager$OnActivityDestroyListener;,
        Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field public static final whitelist METADATA_KEY_PREFERENCES:Ljava/lang/String; = "android.preference"

.field private static final greylist-max-o STORAGE_CREDENTIAL_PROTECTED:I = 0x2

.field private static final greylist-max-o STORAGE_DEFAULT:I = 0x0

.field private static final greylist-max-o STORAGE_DEVICE_PROTECTED:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PreferenceManager"


# instance fields
.field private greylist-max-o mActivity:Landroid/app/Activity;

.field private greylist mActivityDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/PreferenceManager$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mActivityStopListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/PreferenceManager$OnActivityStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mEditor:Landroid/content/SharedPreferences$Editor;

.field private greylist-max-p mFragment:Landroid/preference/PreferenceFragment;

.field private greylist-max-o mNextId:J

.field private greylist-max-o mNextRequestCode:I

.field private greylist-max-o mNoCommit:Z

.field private greylist mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private greylist-max-o mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

.field private greylist-max-o mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private greylist-max-o mPreferencesScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mSharedPreferences:Landroid/content/SharedPreferences;

.field private greylist-max-o mSharedPreferencesMode:I

.field private greylist-max-o mSharedPreferencesName:Ljava/lang/String;

.field private greylist-max-o mStorage:I


# direct methods
.method public constructor greylist <init>(Landroid/app/Activity;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    iput-object p1, p0, Landroid/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    iput p2, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I

    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method constructor greylist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method private greylist-max-o dismissAllScreens()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static whitelist getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDefaultSharedPreferencesMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-o queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static whitelist setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 5

    const-string v0, "_has_set_default_values"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez p4, :cond_0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/preference/PreferenceManager;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, p0, p3, v3}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    nop

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private greylist setNoCommit(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    return-void
.end method


# virtual methods
.method greylist-max-o addPreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;
    .locals 2

    new-instance v0, Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    return-object v0
.end method

.method greylist dispatchActivityDestroy()V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    invoke-interface {v3}, Landroid/preference/PreferenceManager$OnActivityDestroyListener;->onActivityDestroy()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/preference/PreferenceManager;->dismissAllScreens()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method greylist dispatchActivityResult(IILandroid/content/Intent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceManager$OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method greylist dispatchActivityStop()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceManager$OnActivityStopListener;

    invoke-interface {v3}, Landroid/preference/PreferenceManager$OnActivityStopListener;->onActivityStop()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method greylist-max-o dispatchNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceManager;->dismissAllScreens()V

    return-void
.end method

.method public whitelist findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method greylist getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method greylist-max-o getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method greylist getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method greylist getFragment()Landroid/preference/PreferenceFragment;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mFragment:Landroid/preference/PreferenceFragment;

    return-object v0
.end method

.method greylist-max-o getNextId()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/preference/PreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist getNextRequestCode()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method public whitelist getPreferenceDataStore()Landroid/preference/PreferenceDataStore;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    return-object v0
.end method

.method greylist getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method public whitelist getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    iget v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    nop

    :goto_0
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getSharedPreferencesMode()I
    .locals 1

    iget v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public whitelist getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method greylist inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 11

    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    const-string v6, "android.preference"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v8, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v9, Landroid/preference/PreferenceInflater;

    invoke-direct {v9, v8, p0}, Landroid/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V

    nop

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10, v6}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    nop

    invoke-virtual {v9, v6, p2, v3}, Landroid/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v10

    move-object p2, v10

    check-cast p2, Landroid/preference/PreferenceScreen;

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catch_0
    move-exception v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not create context for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PreferenceManager"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    return-object p2
.end method

.method public greylist inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/preference/PreferenceManager;->setNoCommit(Z)V

    new-instance v1, Landroid/preference/PreferenceInflater;

    invoke-direct {v1, p1, p0}, Landroid/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V

    invoke-virtual {v1, p2, p3, v0}, Landroid/preference/PreferenceInflater;->inflate(ILandroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    move-object p3, v0

    check-cast p3, Landroid/preference/PreferenceScreen;

    invoke-virtual {p3, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceManager;->setNoCommit(Z)V

    return-object p3
.end method

.method public whitelist isStorageCredentialProtected()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isStorageDefault()Z
    .locals 1

    iget v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isStorageDeviceProtected()Z
    .locals 2

    iget v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method greylist registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o removePreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-p setFragment(Landroid/preference/PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/PreferenceManager;->mFragment:Landroid/preference/PreferenceFragment;

    return-void
.end method

.method greylist-max-o setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-void
.end method

.method public whitelist setPreferenceDataStore(Landroid/preference/PreferenceDataStore;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/PreferenceManager;->mPreferenceDataStore:Landroid/preference/PreferenceDataStore;

    return-void
.end method

.method greylist setPreferences(Landroid/preference/PreferenceScreen;)Z
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setSharedPreferencesMode(I)V
    .locals 1

    iput p1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public whitelist setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public whitelist setStorageCredentialProtected()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x2

    iput v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public whitelist setStorageDefault()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public whitelist setStorageDeviceProtected()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroid/preference/PreferenceManager;->mStorage:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method greylist shouldCommit()Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method greylist unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
