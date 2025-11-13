.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final greylist-max-o SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final blacklist mAllFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallDeleteCommand:Ljava/lang/String;

.field private final greylist-max-o mCallGetCommand:Ljava/lang/String;

.field private final blacklist mCallListCommand:Ljava/lang/String;

.field private final blacklist mCallSetAllCommand:Ljava/lang/String;

.field private final greylist-max-o mCallSetCommand:Ljava/lang/String;

.field private greylist-max-o mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

.field private final greylist mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private final blacklist mReadableFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private final blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 3137
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 3138
    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    .line 3140
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "deleteCommand"    # Ljava/lang/String;
    .param p5, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3171
    .local p6, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    .line 3173
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "deleteCommand"    # Ljava/lang/String;
    .param p5, "listCommand"    # Ljava/lang/String;
    .param p6, "setAllCommand"    # Ljava/lang/String;
    .param p7, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3177
    .local p8, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    .line 3178
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3179
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3180
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3181
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3182
    iput-object p5, p0, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 3183
    iput-object p6, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3184
    iput-object p7, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 3185
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    .line 3186
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    .line 3187
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 3188
    invoke-static {p8, v1, v0, v2}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 3190
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings$NameValueCache-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    return-void
.end method

.method private static blacklist isCallerExemptFromReadableRestriction()Z
    .locals 6

    .line 3544
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3545
    return v1

    .line 3547
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    .line 3548
    return v1

    .line 3550
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3551
    .local v0, "application":Landroid/app/Application;
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 3554
    :cond_2
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3555
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    .line 3557
    .local v4, "isTestOnly":Z
    :goto_0
    if-nez v4, :cond_5

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3558
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    :goto_1
    nop

    .line 3557
    :goto_2
    return v1

    .line 3552
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "isTestOnly":Z
    :cond_6
    :goto_3
    return v2
.end method

.method private blacklist isCloneToManagedProfileKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 3293
    invoke-static {}, Landroid/provider/Settings$System;->-$$Nest$sfgetCLONE_TO_MANAGED_PROFILE()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/provider/Settings$Secure;->-$$Nest$sfgetCLONE_TO_MANAGED_PROFILE()Ljava/util/Set;

    move-result-object v0

    .line 3294
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3293
    :goto_1
    return v0
.end method

.method private blacklist semDumpCallStackIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 3226
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    const-string v1, "PUT_secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "enabled_accessibility_services"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3230
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3231
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 3232
    const-string v1, "Settings"

    const-string v2, "can\'t get context for a11y callstack"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    return-void

    .line 3236
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 3237
    .local v1, "time":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nvalue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\npackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nuser id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "a11y service changed"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3241
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3243
    .local v2, "callStack":Ljava/lang/String;
    const-string v3, "accessibility"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 3245
    .local v3, "a11yManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v3, :cond_2

    .line 3246
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityManager;->semDumpCallStack(Ljava/lang/String;)V

    .line 3248
    :cond_2
    return-void

    .line 3227
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "time":Ljava/lang/String;
    .end local v2    # "callStack":Ljava/lang/String;
    .end local v3    # "a11yManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public greylist-max-o clearGenerationTrackerForTest()V
    .locals 1

    .line 3714
    monitor-enter p0

    .line 3715
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    .line 3716
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3718
    :cond_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3719
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3720
    monitor-exit p0

    .line 3721
    return-void

    .line 3720
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist deleteStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3274
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3275
    .local v0, "arg":Landroid/os/Bundle;
    const-string v1, "_user"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3276
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3277
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3278
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3277
    move-object v5, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3282
    nop

    .line 3283
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    const/4 v0, 0x1

    return v0

    .line 3279
    :catch_0
    move-exception v0

    .line 3280
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3281
    const/4 v1, 0x0

    return v1
.end method

.method public greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 23
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3305
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {}, Landroid/provider/Settings$NameValueCache;->isCallerExemptFromReadableRestriction()Z

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3306
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3315
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3316
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3317
    .local v0, "maxTargetSdk":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 3318
    .local v2, "application":Landroid/app/Application;
    if-eqz v2, :cond_0

    .line 3319
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3320
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt v3, v0, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    move v3, v11

    .line 3322
    .local v3, "targetSdkCheckOk":Z
    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    .line 3323
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings key: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> is only readable to apps with targetSdkVersion lower than or equal to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3307
    .end local v0    # "maxTargetSdk":I
    .end local v2    # "application":Landroid/app/Application;
    .end local v3    # "targetSdkCheckOk":Z
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings key: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is not readable. From S+, settings keys annotated with @hide are restricted to system_server and system apps only, unless they are annotated with @Readable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3333
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne v9, v0, :cond_4

    move v0, v10

    goto :goto_2

    :cond_4
    move v0, v11

    :goto_2
    move v12, v0

    .line 3335
    .local v12, "isSelf":Z
    invoke-direct {v1, v8}, Landroid/provider/Settings$NameValueCache;->isCloneToManagedProfileKey(Ljava/lang/String;)Z

    move-result v13

    .line 3337
    .local v13, "isCloneToManagedProfileKey":Z
    const/4 v2, -0x1

    .line 3338
    .local v2, "currentGeneration":I
    if-eqz v12, :cond_a

    if-nez v13, :cond_a

    .line 3342
    monitor-enter p0

    .line 3343
    :try_start_0
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_9

    .line 3344
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3345
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 3346
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generation changed for type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3347
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3348
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3346
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_5
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_3

    .line 3351
    :cond_6
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3354
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3355
    .local v0, "result":Ljava/lang/String;
    sget-boolean v3, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 3356
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callingPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3358
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Cached)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3356
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    :cond_7
    monitor-exit p0

    return-object v0

    .line 3365
    .end local v0    # "result":Ljava/lang/String;
    :cond_8
    :goto_3
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_9

    .line 3366
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    move v2, v0

    .line 3369
    :cond_9
    monitor-exit p0

    move v14, v2

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3375
    :cond_a
    move v14, v2

    .end local v2    # "currentGeneration":I
    .local v14, "currentGeneration":I
    :goto_4
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v15, p1

    invoke-virtual {v0, v15}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v22

    .line 3381
    .local v22, "cp":Landroid/content/IContentProvider;
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v0, :cond_16

    .line 3383
    const/4 v0, 0x0

    .line 3384
    .local v0, "args":Landroid/os/Bundle;
    if-nez v12, :cond_b

    .line 3385
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    .line 3386
    const-string v2, "_user"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    goto :goto_5

    .line 3384
    :cond_b
    move-object v2, v0

    .line 3388
    .end local v0    # "args":Landroid/os/Bundle;
    .local v2, "args":Landroid/os/Bundle;
    :goto_5
    const/4 v3, 0x0

    .line 3389
    .local v3, "needsGenerationTracker":Z
    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3390
    if-eqz v12, :cond_d

    :try_start_2
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-nez v0, :cond_d

    if-nez v13, :cond_d

    .line 3394
    const/4 v3, 0x1

    .line 3395
    if-nez v2, :cond_c

    .line 3396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 3398
    :cond_c
    const-string v0, "_track_generation"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 3400
    const-string v0, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested generation tracker for type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3401
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3400
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 3405
    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_d
    :goto_6
    move-object/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "needsGenerationTracker":Z
    .local v16, "args":Landroid/os/Bundle;
    .local v17, "needsGenerationTracker":Z
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 3413
    :try_start_4
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_e

    .line 3414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-wide/from16 v18, v2

    .line 3416
    .local v18, "token":J
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3417
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3416
    move-object/from16 v2, v22

    move-object/from16 v6, p2

    move-object/from16 v7, v16

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3420
    .local v0, "b":Landroid/os/Bundle;
    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3421
    nop

    .line 3422
    .end local v18    # "token":J
    move-object v2, v0

    goto :goto_7

    .line 3420
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local v18    # "token":J
    :catchall_2
    move-exception v0

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3421
    nop

    .end local v12    # "isSelf":Z
    .end local v13    # "isCloneToManagedProfileKey":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    throw v0

    .line 3423
    .end local v18    # "token":J
    .restart local v12    # "isSelf":Z
    .restart local v13    # "isCloneToManagedProfileKey":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3424
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3423
    move-object/from16 v2, v22

    move-object/from16 v6, p2

    move-object/from16 v7, v16

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v0

    .line 3426
    .local v2, "b":Landroid/os/Bundle;
    :goto_7
    if-eqz v2, :cond_15

    .line 3427
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 3429
    .local v3, "value":Ljava/lang/String;
    if-eqz v12, :cond_13

    .line 3430
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3431
    if-eqz v17, :cond_11

    .line 3432
    :try_start_7
    const-string v0, "_track_generation"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3434
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v4, "_generation_index"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3436
    .local v4, "index":I
    if-eqz v0, :cond_11

    if-ltz v4, :cond_11

    .line 3437
    const-string v5, "_generation"

    invoke-virtual {v2, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3439
    .local v5, "generation":I
    sget-boolean v6, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v6, :cond_f

    .line 3440
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received generation tracker for type:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3441
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " in package:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3442
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " and user:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " with index:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3440
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    :cond_f
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v6, :cond_10

    .line 3446
    invoke-virtual {v6}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3448
    :cond_10
    new-instance v6, Landroid/provider/Settings$GenerationTracker;

    new-instance v7, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda1;-><init>(Landroid/provider/Settings$NameValueCache;)V

    invoke-direct {v6, v0, v4, v5, v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    iput-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3462
    move v6, v5

    move v14, v6

    .line 3465
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v4    # "index":I
    .end local v5    # "generation":I
    :cond_11
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_12

    .line 3466
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v14, v0, :cond_12

    .line 3467
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3469
    :cond_12
    monitor-exit p0

    goto :goto_8

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v12    # "isSelf":Z
    .end local v13    # "isCloneToManagedProfileKey":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_8
    throw v0

    .line 3476
    .restart local v12    # "isSelf":Z
    .restart local v13    # "isCloneToManagedProfileKey":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_13
    :goto_8
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_14

    .line 3477
    const-string v0, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callingPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3479
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (ProviderCall)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3477
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 3483
    :cond_14
    return-object v3

    .line 3490
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/String;
    .end local v16    # "args":Landroid/os/Bundle;
    .end local v17    # "needsGenerationTracker":Z
    :cond_15
    goto :goto_a

    .line 3405
    .restart local v16    # "args":Landroid/os/Bundle;
    .restart local v17    # "needsGenerationTracker":Z
    :catchall_4
    move-exception v0

    move-object/from16 v2, v16

    move/from16 v3, v17

    .end local v16    # "args":Landroid/os/Bundle;
    .end local v17    # "needsGenerationTracker":Z
    .local v2, "args":Landroid/os/Bundle;
    .local v3, "needsGenerationTracker":Z
    :goto_9
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v12    # "isSelf":Z
    .end local v13    # "isCloneToManagedProfileKey":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_a
    throw v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 3487
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "needsGenerationTracker":Z
    .restart local v12    # "isSelf":Z
    .restart local v13    # "isCloneToManagedProfileKey":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :catch_0
    move-exception v0

    .line 3493
    :cond_16
    :goto_a
    const/4 v11, 0x0

    .line 3495
    .local v11, "c":Landroid/database/Cursor;
    :try_start_b
    const-string/jumbo v0, "name=?"

    new-array v2, v10, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v8, v2, v3
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const/4 v10, 0x0

    :try_start_c
    invoke-static {v0, v2, v10}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 3498
    .local v6, "queryArgs":Landroid/os/Bundle;
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_17

    .line 3499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-wide/from16 v16, v2

    .line 3501
    .local v16, "token":J
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, v22

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object v11, v0

    .line 3504
    :try_start_e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3505
    nop

    .line 3506
    .end local v16    # "token":J
    goto :goto_b

    .line 3504
    .restart local v16    # "token":J
    :catchall_5
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3505
    nop

    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "isSelf":Z
    .end local v13    # "isCloneToManagedProfileKey":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    throw v0

    .line 3507
    .end local v16    # "token":J
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "isSelf":Z
    .restart local v13    # "isCloneToManagedProfileKey":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v17

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v19, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-object/from16 v18, v0

    move-object/from16 v20, v6

    invoke-interface/range {v16 .. v21}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v11, v0

    .line 3510
    :goto_b
    if-nez v11, :cond_19

    .line 3511
    const-string v0, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 3512
    nop

    .line 3539
    if-eqz v11, :cond_18

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3512
    :cond_18
    return-object v10

    .line 3515
    :cond_19
    :try_start_f
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    :cond_1a
    move-object v7, v10

    :goto_c
    move-object v2, v7

    .line 3516
    .local v2, "value":Ljava/lang/String;
    monitor-enter p0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 3517
    :try_start_10
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_1b

    .line 3518
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v14, v0, :cond_1b

    .line 3519
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3521
    :cond_1b
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 3527
    :try_start_11
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 3528
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3530
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (Query)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3528
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 3534
    :cond_1c
    nop

    .line 3539
    if-eqz v11, :cond_1d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3534
    :cond_1d
    return-object v2

    .line 3521
    :catchall_6
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "isSelf":Z
    .end local v13    # "isCloneToManagedProfileKey":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_13
    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 3535
    .end local v2    # "value":Ljava/lang/String;
    .end local v6    # "queryArgs":Landroid/os/Bundle;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "isSelf":Z
    .restart local v13    # "isCloneToManagedProfileKey":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :catch_1
    move-exception v0

    goto :goto_d

    .line 3539
    :catchall_7
    move-exception v0

    goto :goto_e

    .line 3535
    :catch_2
    move-exception v0

    const/4 v10, 0x0

    .line 3536
    .local v0, "e":Landroid/os/RemoteException;
    :goto_d
    :try_start_14
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 3537
    nop

    .line 3539
    if-eqz v11, :cond_1e

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3537
    :cond_1e
    return-object v10

    .line 3539
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    if-eqz v11, :cond_1f

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3540
    :cond_1f
    throw v0
.end method

.method public blacklist getStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 19
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3563
    .local p3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3564
    .local v4, "namespace":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/provider/DeviceConfig;->enforceReadPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3565
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    .line 3566
    .local v5, "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 3568
    .local v6, "currentGeneration":I
    monitor-enter p0

    .line 3569
    :try_start_0
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v0, :cond_8

    .line 3570
    :try_start_1
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3571
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3572
    const-string v0, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Generation changed for type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3573
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3572
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    :cond_0
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_3

    .line 3577
    :cond_1
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 3578
    .local v0, "prefixCached":Z
    if-eqz v0, :cond_7

    .line 3579
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3580
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3581
    .local v7, "name":Ljava/lang/String;
    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3582
    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3584
    .end local v7    # "name":Ljava/lang/String;
    :cond_2
    goto :goto_0

    :cond_3
    goto :goto_2

    .line 3586
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 3587
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3590
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3591
    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3586
    .end local v7    # "key":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3595
    .end local v3    # "i":I
    :cond_6
    :goto_2
    monitor-exit p0

    return-object v5

    .line 3598
    .end local v0    # "prefixCached":Z
    :cond_7
    :goto_3
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_8

    .line 3599
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v0

    goto :goto_4

    .line 3602
    :catchall_0
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    goto/16 :goto_11

    :cond_8
    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 3604
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 3606
    return-object v5

    .line 3608
    :cond_9
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v7, p1

    invoke-virtual {v0, v7}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v14

    .line 3611
    .local v14, "cp":Landroid/content/IContentProvider;
    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v15, v0

    .line 3612
    .local v15, "args":Landroid/os/Bundle;
    const-string v0, "_prefix"

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3613
    const/4 v8, 0x0

    .line 3614
    .local v8, "needsGenerationTracker":Z
    monitor-enter p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 3615
    :try_start_4
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    const/4 v13, 0x0

    if-nez v0, :cond_b

    .line 3616
    const/4 v8, 0x1

    .line 3617
    :try_start_5
    const-string v0, "_track_generation"

    invoke-virtual {v15, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3618
    sget-boolean v0, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 3619
    const-string v0, "Settings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested generation tracker for type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3620
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in package:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3619
    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3623
    :cond_a
    move/from16 v16, v8

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    goto/16 :goto_e

    .line 3615
    :cond_b
    move/from16 v16, v8

    .line 3623
    .end local v8    # "needsGenerationTracker":Z
    .local v16, "needsGenerationTracker":Z
    :goto_5
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 3629
    :try_start_7
    const-string v0, "device_policy_manager"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v0, :cond_e

    .line 3630
    :try_start_8
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3631
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-eq v0, v8, :cond_c

    .line 3632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    move-wide/from16 v17, v8

    .line 3635
    .local v17, "token":J
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3636
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    const/4 v12, 0x0

    .line 3635
    move-object v8, v14

    move-object v0, v13

    move-object v13, v15

    invoke-interface/range {v8 .. v13}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3638
    .local v8, "b":Landroid/os/Bundle;
    :try_start_a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3639
    nop

    .line 3640
    .end local v17    # "token":J
    goto :goto_8

    .line 3638
    .end local v8    # "b":Landroid/os/Bundle;
    .restart local v17    # "token":J
    :catchall_2
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3639
    nop

    .end local v4    # "namespace":Ljava/lang/String;
    .end local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "currentGeneration":I
    .end local v14    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 3631
    .end local v17    # "token":J
    .restart local v4    # "namespace":Ljava/lang/String;
    .restart local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "currentGeneration":I
    .restart local v14    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    move-object v0, v13

    goto :goto_7

    .line 3630
    :cond_d
    move-object v0, v13

    goto :goto_7

    .line 3707
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v16    # "needsGenerationTracker":Z
    :catch_0
    move-exception v0

    move-object/from16 v13, p3

    :goto_6
    move-object/from16 v17, v4

    goto/16 :goto_10

    .line 3629
    .restart local v15    # "args":Landroid/os/Bundle;
    .restart local v16    # "needsGenerationTracker":Z
    :cond_e
    move-object v0, v13

    .line 3642
    :goto_7
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v8}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v8

    .line 3643
    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    const/4 v12, 0x0

    .line 3642
    move-object v8, v14

    move-object v13, v15

    invoke-interface/range {v8 .. v13}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 3645
    .restart local v8    # "b":Landroid/os/Bundle;
    :goto_8
    if-nez v8, :cond_f

    .line 3647
    return-object v5

    .line 3651
    :cond_f
    const-string/jumbo v9, "value"

    .line 3652
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 3654
    .local v9, "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v10
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4

    if-nez v10, :cond_12

    .line 3655
    :try_start_c
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3656
    .local v11, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    move-object/from16 v13, p3

    :try_start_d
    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 3657
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1

    .line 3659
    .end local v11    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10
    const/4 v0, 0x0

    goto :goto_9

    .line 3707
    .end local v8    # "b":Landroid/os/Bundle;
    .end local v9    # "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v16    # "needsGenerationTracker":Z
    :catch_1
    move-exception v0

    goto :goto_6

    .line 3659
    .restart local v8    # "b":Landroid/os/Bundle;
    .restart local v9    # "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "args":Landroid/os/Bundle;
    .restart local v16    # "needsGenerationTracker":Z
    :cond_11
    move-object/from16 v13, p3

    goto :goto_a

    .line 3661
    :cond_12
    move-object/from16 v13, p3

    :try_start_e
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 3664
    :goto_a
    monitor-enter p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    .line 3665
    if-eqz v16, :cond_16

    .line 3666
    :try_start_f
    const-string v0, "_track_generation"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3668
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v10, "_generation_index"

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 3670
    .local v10, "index":I
    if-eqz v0, :cond_15

    if-ltz v10, :cond_15

    .line 3671
    const-string v11, "_generation"

    invoke-virtual {v8, v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3673
    .local v3, "generation":I
    sget-boolean v11, Landroid/provider/Settings$NameValueCache;->DEBUG:Z

    if-eqz v11, :cond_13

    .line 3674
    const-string v11, "Settings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object/from16 v17, v4

    .end local v4    # "namespace":Ljava/lang/String;
    .local v17, "namespace":Ljava/lang/String;
    :try_start_10
    const-string v4, "Received generation tracker for type:"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v12, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3675
    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " in package:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3676
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " with index:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3674
    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3673
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :cond_13
    move-object/from16 v17, v4

    .line 3678
    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    :goto_b
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v4, :cond_14

    .line 3679
    invoke-virtual {v4}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3681
    :cond_14
    new-instance v4, Landroid/provider/Settings$GenerationTracker;

    new-instance v11, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;

    invoke-direct {v11, v1}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    invoke-direct {v4, v0, v10, v3, v11}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    iput-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3695
    move v6, v3

    goto :goto_c

    .line 3670
    .end local v3    # "generation":I
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :cond_15
    move-object/from16 v17, v4

    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    goto :goto_c

    .line 3705
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v10    # "index":I
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    goto :goto_d

    .line 3665
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :cond_16
    move-object/from16 v17, v4

    .line 3698
    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    :goto_c
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_17

    .line 3699
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v6, v0, :cond_17

    .line 3701
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 3703
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3705
    :cond_17
    monitor-exit p0

    .line 3706
    return-object v5

    .line 3705
    :catchall_4
    move-exception v0

    :goto_d
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .end local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "currentGeneration":I
    .end local v14    # "cp":Landroid/content/IContentProvider;
    .end local v17    # "namespace":Ljava/lang/String;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_11
    throw v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_3

    .line 3707
    .end local v8    # "b":Landroid/os/Bundle;
    .end local v9    # "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v16    # "needsGenerationTracker":Z
    .restart local v4    # "namespace":Ljava/lang/String;
    .restart local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "currentGeneration":I
    .restart local v14    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v0

    goto :goto_f

    .line 3623
    .restart local v15    # "args":Landroid/os/Bundle;
    .restart local v16    # "needsGenerationTracker":Z
    :catchall_5
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    move/from16 v8, v16

    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    goto :goto_e

    .end local v16    # "needsGenerationTracker":Z
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    .local v8, "needsGenerationTracker":Z
    :catchall_6
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    :goto_e
    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .end local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "currentGeneration":I
    .end local v14    # "cp":Landroid/content/IContentProvider;
    .end local v17    # "namespace":Ljava/lang/String;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_13
    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_3

    .line 3707
    .end local v8    # "needsGenerationTracker":Z
    .end local v15    # "args":Landroid/os/Bundle;
    .restart local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "currentGeneration":I
    .restart local v14    # "cp":Landroid/content/IContentProvider;
    .restart local v17    # "namespace":Ljava/lang/String;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v0

    goto :goto_10

    .line 3623
    .restart local v8    # "needsGenerationTracker":Z
    .restart local v15    # "args":Landroid/os/Bundle;
    :catchall_7
    move-exception v0

    goto :goto_e

    .line 3707
    .end local v8    # "needsGenerationTracker":Z
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v13, p3

    :goto_f
    move-object/from16 v17, v4

    .line 3709
    .end local v4    # "namespace":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "namespace":Ljava/lang/String;
    :goto_10
    return-object v5

    .line 3602
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v14    # "cp":Landroid/content/IContentProvider;
    .end local v17    # "namespace":Ljava/lang/String;
    .restart local v4    # "namespace":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v13, p3

    move-object/from16 v17, v4

    .end local v4    # "namespace":Ljava/lang/String;
    .restart local v17    # "namespace":Ljava/lang/String;
    :goto_11
    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_11
.end method

.method synthetic blacklist lambda$getStringForUser$0$android-provider-Settings$NameValueCache()V
    .locals 2

    .line 3450
    monitor-enter p0

    .line 3451
    :try_start_0
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    .line 3454
    nop

    .line 3456
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3457
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3458
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 3460
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_0
    monitor-exit p0

    .line 3461
    return-void

    .line 3460
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method synthetic blacklist lambda$getStringsForPrefix$1$android-provider-Settings$NameValueCache()V
    .locals 2

    .line 3683
    monitor-enter p0

    .line 3684
    :try_start_0
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    .line 3687
    nop

    .line 3689
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3690
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3691
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 3693
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_0
    monitor-exit p0

    .line 3694
    return-void

    .line 3693
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "makeDefault"    # Z
    .param p6, "userHandle"    # I
    .param p7, "overrideableByRestore"    # Z

    .line 3196
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3197
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    const-string v1, "_user"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3199
    if-eqz p4, :cond_0

    .line 3200
    const-string v1, "_tag"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3202
    :cond_0
    const/4 v7, 0x1

    if-eqz p5, :cond_1

    .line 3203
    const-string v1, "_make_default"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3205
    :cond_1
    if-eqz p7, :cond_2

    .line 3206
    const-string v1, "_overrideable_by_restore"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3208
    :cond_2
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3209
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3210
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3209
    move-object v5, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3213
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, p3, v2, p6}, Landroid/provider/Settings$NameValueCache;->semDumpCallStackIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3219
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    nop

    .line 3220
    return v7

    .line 3216
    :catch_0
    move-exception v0

    .line 3217
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3218
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3253
    .local p3, "keyValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3255
    return v1

    .line 3258
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3259
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "_prefix"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    const-string v2, "_flags"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3261
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3262
    .local v2, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v4}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v4

    .line 3263
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v6, 0x0

    .line 3262
    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 3265
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "config_set_all_return"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3266
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 3268
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
