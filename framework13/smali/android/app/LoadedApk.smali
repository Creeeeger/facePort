.class public final Landroid/app/LoadedApk;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$ServiceDispatcher;,
        Landroid/app/LoadedApk$ReceiverDispatcher;,
        Landroid/app/LoadedApk$WarningContextClassLoader;,
        Landroid/app/LoadedApk$SplitDependencyLoaderImpl;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "LoadedApk"

.field private static final blacklist TAG_SPEG:Ljava/lang/String; = "SPEG"

.field private static final blacklist sApplications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist mActivityThread:Landroid/app/ActivityThread;

.field private greylist-max-o mAppComponentFactory:Landroid/app/AppComponentFactory;

.field private greylist mAppDir:Ljava/lang/String;

.field private greylist mApplication:Landroid/app/Application;

.field private greylist mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final greylist mBaseClassLoader:Ljava/lang/ClassLoader;

.field private greylist mClassLoader:Ljava/lang/ClassLoader;

.field private greylist-max-o mCredentialProtectedDataDirFile:Ljava/io/File;

.field private greylist mDataDir:Ljava/lang/String;

.field private greylist-max-p mDataDirFile:Ljava/io/File;

.field private blacklist mDefaultClassLoader:Ljava/lang/ClassLoader;

.field private greylist-max-o mDeviceProtectedDataDirFile:Ljava/io/File;

.field private final greylist mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final greylist-max-o mIncludeCode:Z

.field private blacklist mLegacyOverlayDirs:[Ljava/lang/String;

.field private greylist-max-r mLibDir:Ljava/lang/String;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mOverlayPaths:[Ljava/lang/String;

.field final greylist mPackageName:Ljava/lang/String;

.field private final greylist mReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRegisterPackage:Z

.field private greylist mResDir:Ljava/lang/String;

.field greylist mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mSecurityViolation:Z

.field private final greylist-max-p mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mSplitAppDirs:[Ljava/lang/String;

.field private greylist-max-o mSplitClassLoaderNames:[Ljava/lang/String;

.field private greylist-max-o mSplitLoader:Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

.field private greylist-max-o mSplitNames:[Ljava/lang/String;

.field private greylist mSplitResDirs:[Ljava/lang/String;

.field private final greylist-max-o mUnboundServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUnregisteredReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClassLoader(Landroid/app/LoadedApk;)Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/app/LoadedApk;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplitAppDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplitClassLoaderNames(Landroid/app/LoadedApk;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/LoadedApk;->mSplitClassLoaderNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplitNames(Landroid/app/LoadedApk;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/LoadedApk;->mSplitNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplitResDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateOrUpdateClassLoaderLocked(Landroid/app/LoadedApk;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/LoadedApk;->createOrUpdateClassLoaderLocked(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misSpeg(Landroid/app/LoadedApk;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/LoadedApk;->isSpeg()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mspegRestore(Landroid/app/LoadedApk;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/LoadedApk;->spegRestore()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 123
    nop

    .line 185
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/app/LoadedApk;->sApplications:Landroid/util/ArrayMap;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/ActivityThread;)V
    .locals 4
    .param p1, "activityThread"    # Landroid/app/ActivityThread;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 169
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    .line 172
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    .line 177
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mLock:Ljava/lang/Object;

    .line 246
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 247
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 248
    const-string v1, "android"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 249
    iput-object v1, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 252
    iput-object v0, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    .line 253
    iput-object v0, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    .line 254
    iput-object v0, p0, Landroid/app/LoadedApk;->mSplitClassLoaderNames:[Ljava/lang/String;

    .line 255
    iput-object v0, p0, Landroid/app/LoadedApk;->mLegacyOverlayDirs:[Ljava/lang/String;

    .line 256
    iput-object v0, p0, Landroid/app/LoadedApk;->mOverlayPaths:[Ljava/lang/String;

    .line 257
    iput-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 258
    iput-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 259
    iput-object v0, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    .line 260
    iput-object v0, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    .line 261
    iput-object v0, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 264
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 265
    iput-boolean v0, p0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    .line 266
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 267
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    .line 268
    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, v0}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 269
    iget-object v1, p0, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    new-instance v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AppComponentFactory;->instantiateClassLoader(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 271
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V
    .locals 2
    .param p1, "activityThread"    # Landroid/app/ActivityThread;
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p5, "securityViolation"    # Z
    .param p6, "includeCode"    # Z
    .param p7, "registerPackage"    # Z

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 169
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    .line 172
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    .line 174
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    .line 177
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    .line 187
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/LoadedApk;->mLock:Ljava/lang/Object;

    .line 203
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 204
    invoke-direct {p0, p2}, Landroid/app/LoadedApk;->setApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 205
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 206
    iput-object p4, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 207
    iput-boolean p5, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 208
    iput-boolean p6, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 209
    iput-boolean p7, p0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    .line 210
    invoke-virtual {v0, p3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 211
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, p4}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 212
    return-void
.end method

.method private static greylist-max-o adjustNativeLibraryPaths(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 218
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 219
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "runtimeIsa":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "secondaryIsa":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ro.dalvik.vm.isa."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    move-object v1, v3

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 232
    .local v3, "modified":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 233
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 234
    return-object v3

    .line 238
    .end local v0    # "runtimeIsa":Ljava/lang/String;
    .end local v1    # "secondaryIsa":Ljava/lang/String;
    .end local v2    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v3    # "modified":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-object p0
.end method

.method private blacklist allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .locals 1

    .line 825
    iget-object v0, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-nez v0, :cond_0

    .line 829
    const/4 v0, 0x0

    return-object v0

    .line 832
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    return-object v0
.end method

.method private blacklist allowVmViolations()Landroid/os/StrictMode$VmPolicy;
    .locals 1

    .line 842
    iget-object v0, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-nez v0, :cond_0

    .line 846
    const/4 v0, 0x0

    return-object v0

    .line 849
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowVmViolations()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o appendApkLibPathIfNeeded(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 644
    .local p2, "outLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_0
    return-void
.end method

.method private static blacklist appendSharedLibrariesLibPathsIfNeeded(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/util/Set;Ljava/util/List;)V
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 473
    .local p0, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local p2, "outSeenPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "outLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 474
    return-void

    .line 476
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    .line 477
    .local v1, "lib":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v2

    .line 484
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 485
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 486
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4, p1, p3}, Landroid/app/LoadedApk;->appendApkLibPathIfNeeded(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 487
    .end local v4    # "path":Ljava/lang/String;
    goto :goto_1

    .line 488
    :cond_2
    nop

    .line 489
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v3

    .line 488
    invoke-static {v3, p1, p2, p3}, Landroid/app/LoadedApk;->appendSharedLibrariesLibPathsIfNeeded(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/util/Set;Ljava/util/List;)V

    .line 490
    .end local v1    # "lib":Landroid/content/pm/SharedLibraryInfo;
    .end local v2    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 491
    :cond_3
    return-void
.end method

.method private blacklist canAccessDataDir()Z
    .locals 4

    .line 1119
    iget-object v0, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-nez v0, :cond_0

    .line 1120
    const/4 v0, 0x0

    return v0

    .line 1124
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    const/4 v0, 0x1

    return v0

    .line 1130
    :cond_1
    invoke-direct {p0}, Landroid/app/LoadedApk;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1135
    .local v0, "oldThreadPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-direct {p0}, Landroid/app/LoadedApk;->allowVmViolations()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 1140
    .local v1, "oldVmPolicy":Landroid/os/StrictMode$VmPolicy;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    invoke-direct {p0, v0}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1143
    invoke-direct {p0, v1}, Landroid/app/LoadedApk;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1140
    return v2

    .line 1142
    :catchall_0
    move-exception v2

    invoke-direct {p0, v0}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1143
    invoke-direct {p0, v1}, Landroid/app/LoadedApk;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1144
    throw v2
.end method

.method private static blacklist checkAndUpdateApkPaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 3
    .param p0, "activityThread"    # Landroid/app/ActivityThread;
    .param p1, "expectedAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "cacheWithCode"    # Z

    .line 2426
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    .line 2427
    .local v0, "expectedCodePath":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v1

    .line 2430
    .local v1, "loadedApk":Landroid/app/LoadedApk;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2431
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2435
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2436
    .local v2, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, v2}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2439
    invoke-virtual {v1, p1, v2}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2440
    return-void

    .line 2432
    .end local v2    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist checkAndUpdateApkPaths(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p0, "expectedAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2415
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2416
    .local v0, "activityThread":Landroid/app/ActivityThread;
    if-nez v0, :cond_0

    .line 2417
    const-string v1, "LoadedApk"

    const-string v2, "Cannot find activity thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    return-void

    .line 2420
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/app/LoadedApk;->checkAndUpdateApkPaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Z)V

    .line 2421
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/app/LoadedApk;->checkAndUpdateApkPaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Z)V

    .line 2422
    return-void
.end method

.method private greylist-max-o createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;
    .locals 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "cl"    # Ljava/lang/ClassLoader;

    .line 286
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 288
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 289
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppComponentFactory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    return-object v0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v1, "LoadedApk"

    const-string v2, "Unable to instantiate appComponentFactory"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    sget-object v0, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    return-object v0
.end method

.method private greylist-max-o createOrUpdateClassLoaderLocked(Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 860
    .local p1, "addedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 865
    return-void

    .line 868
    :cond_0
    iget-object v0, v1, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1

    .line 869
    iput-object v0, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 871
    :cond_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    .line 873
    :goto_0
    iget-object v0, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, v0, v3}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 874
    iget-object v3, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    new-instance v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v5}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AppComponentFactory;->instantiateClassLoader(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 876
    return-void

    .line 883
    :cond_2
    iget-object v0, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 884
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, v1, Landroid/app/LoadedApk;->mIncludeCode:Z

    if-eqz v0, :cond_3

    .line 887
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v3, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-interface {v0, v3, v4}, Landroid/content/pm/IPackageManager;->notifyPackageUse(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    goto :goto_1

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 894
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    iget-boolean v0, v1, Landroid/app/LoadedApk;->mRegisterPackage:Z

    if-eqz v0, :cond_4

    .line 896
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 899
    goto :goto_2

    .line 897
    :catch_1
    move-exception v0

    .line 898
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 908
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 909
    .local v4, "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 911
    .local v3, "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 912
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v5

    goto :goto_3

    :cond_5
    move v0, v6

    .line 921
    .local v0, "isBundledApp":Z
    :goto_3
    const-string v7, "java.library.path"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 922
    .local v7, "defaultSearchPaths":Ljava/lang/String;
    const-string v8, "/vendor/lib"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v5

    .line 923
    .local v8, "treatVendorApkAsUnbundled":Z
    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 924
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    .line 925
    const/4 v0, 0x0

    .line 934
    :cond_6
    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 935
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 936
    invoke-static {}, Landroid/sysprop/VndkProperties;->product_vndk_version()Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Optional;->isPresent()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 937
    const/4 v0, 0x0

    move v15, v0

    goto :goto_4

    .line 940
    :cond_7
    move v15, v0

    .end local v0    # "isBundledApp":Z
    .local v15, "isBundledApp":Z
    :goto_4
    iget-object v0, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v15, v9, v4, v3}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 944
    invoke-direct/range {p0 .. p0}, Landroid/app/LoadedApk;->canAccessDataDir()Z

    move-result v0

    const-string v9, ""

    if-eqz v0, :cond_8

    iget-object v0, v1, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v0, v9

    .line 946
    .local v0, "libraryPermittedPath":Ljava/lang/String;
    :goto_5
    if-eqz v15, :cond_9

    .line 953
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 954
    invoke-virtual/range {p0 .. p0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v11

    new-array v12, v6, [Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v11

    invoke-interface {v11}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v11

    invoke-interface {v11}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_6

    .line 946
    :cond_9
    move-object v10, v0

    .line 961
    .end local v0    # "libraryPermittedPath":Ljava/lang/String;
    .local v10, "libraryPermittedPath":Ljava/lang/String;
    :goto_6
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    .line 963
    .local v14, "librarySearchPath":Ljava/lang/String;
    iget-object v0, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_b

    .line 964
    const-string v11, "gpu_debug_app"

    invoke-virtual {v0, v11, v9}, Landroid/app/ActivityThread;->getStringCoreSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 966
    .local v9, "gpuDebugApp":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 971
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v11, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const-wide/16 v12, 0x80

    .line 973
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 972
    invoke-interface {v0, v11, v12, v13, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 974
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v6

    iget-object v11, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 975
    invoke-virtual {v11}, Landroid/app/ActivityThread;->getCoreSettings()Landroid/os/Bundle;

    move-result-object v11

    .line 976
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    iget-object v13, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 975
    invoke-virtual {v6, v11, v12, v13, v0}, Landroid/os/GraphicsEnvironment;->getDebugLayerPathsFromSettings(Landroid/os/Bundle;Landroid/content/pm/IPackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v6

    .line 977
    .local v6, "debugLayerPath":Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 978
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v10, v11

    .line 985
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "debugLayerPath":Ljava/lang/String;
    :cond_a
    move-object v6, v10

    goto :goto_7

    .line 980
    :catch_2
    move-exception v0

    .line 983
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemoteException when fetching debug layer paths for: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "ActivityThread"

    invoke-static {v11, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "gpuDebugApp":Ljava/lang/String;
    :cond_b
    move-object v6, v10

    .end local v10    # "libraryPermittedPath":Ljava/lang/String;
    .local v6, "libraryPermittedPath":Ljava/lang/String;
    :goto_7
    iget-boolean v0, v1, Landroid/app/LoadedApk;->mIncludeCode:Z

    if-nez v0, :cond_e

    .line 995
    iget-object v0, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_c

    .line 996
    invoke-direct/range {p0 .. p0}, Landroid/app/LoadedApk;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 997
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v9

    iget-object v5, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v5, v1, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    const/16 v16, 0x0

    const-string v10, ""

    move v12, v15

    move-object v13, v14

    move-object/from16 v20, v7

    move-object v7, v14

    .end local v14    # "librarySearchPath":Ljava/lang/String;
    .local v7, "librarySearchPath":Ljava/lang/String;
    .local v20, "defaultSearchPaths":Ljava/lang/String;
    move-object v14, v6

    move/from16 v21, v8

    move v8, v15

    .end local v15    # "isBundledApp":Z
    .local v8, "isBundledApp":Z
    .local v21, "treatVendorApkAsUnbundled":Z
    move-object v15, v5

    invoke-virtual/range {v9 .. v16}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    .line 1001
    invoke-direct {v1, v0}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1002
    sget-object v5, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    iput-object v5, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    goto :goto_8

    .line 995
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v20    # "defaultSearchPaths":Ljava/lang/String;
    .end local v21    # "treatVendorApkAsUnbundled":Z
    .local v7, "defaultSearchPaths":Ljava/lang/String;
    .local v8, "treatVendorApkAsUnbundled":Z
    .restart local v14    # "librarySearchPath":Ljava/lang/String;
    .restart local v15    # "isBundledApp":Z
    :cond_c
    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object v7, v14

    move v8, v15

    .line 1005
    .end local v14    # "librarySearchPath":Ljava/lang/String;
    .end local v15    # "isBundledApp":Z
    .local v7, "librarySearchPath":Ljava/lang/String;
    .local v8, "isBundledApp":Z
    .restart local v20    # "defaultSearchPaths":Ljava/lang/String;
    .restart local v21    # "treatVendorApkAsUnbundled":Z
    :goto_8
    iget-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_d

    .line 1006
    iget-object v0, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    iget-object v5, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    new-instance v9, Landroid/content/pm/ApplicationInfo;

    iget-object v10, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v9, v10}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v5, v9}, Landroid/app/AppComponentFactory;->instantiateClassLoader(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 1010
    :cond_d
    return-void

    .line 1019
    .end local v20    # "defaultSearchPaths":Ljava/lang/String;
    .end local v21    # "treatVendorApkAsUnbundled":Z
    .local v7, "defaultSearchPaths":Ljava/lang/String;
    .local v8, "treatVendorApkAsUnbundled":Z
    .restart local v14    # "librarySearchPath":Ljava/lang/String;
    .restart local v15    # "isBundledApp":Z
    :cond_e
    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object v7, v14

    move v8, v15

    .end local v14    # "librarySearchPath":Ljava/lang/String;
    .end local v15    # "isBundledApp":Z
    .local v7, "librarySearchPath":Ljava/lang/String;
    .local v8, "isBundledApp":Z
    .restart local v20    # "defaultSearchPaths":Ljava/lang/String;
    .restart local v21    # "treatVendorApkAsUnbundled":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_f

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    goto :goto_9

    .line 1020
    :cond_f
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :goto_9
    nop

    .line 1025
    .local v10, "zip":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1026
    .local v0, "registerAppInfoToArt":Z
    iget-object v5, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    if-nez v5, :cond_13

    .line 1038
    iget-object v5, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v5, :cond_10

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1039
    invoke-static {}, Landroid/app/DexLoadReporter;->getInstance()Landroid/app/DexLoadReporter;

    move-result-object v5

    invoke-static {v5}, Ldalvik/system/BaseDexClassLoader;->setReporter(Ldalvik/system/BaseDexClassLoader$Reporter;)V

    .line 1044
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/app/LoadedApk;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 1046
    .local v5, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 1047
    invoke-direct {v1, v9, v8, v7, v6}, Landroid/app/LoadedApk;->createSharedLibrariesLoaders(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v15

    .line 1050
    .local v15, "sharedLibraries":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/ClassLoader;>;Ljava/util/List<Ljava/lang/ClassLoader;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v9

    .line 1051
    .local v14, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    if-eqz v9, :cond_12

    .line 1052
    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/SharedLibraryInfo;

    .line 1053
    .local v11, "info":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v11}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1054
    invoke-virtual {v11}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    .end local v11    # "info":Landroid/content/pm/SharedLibraryInfo;
    :cond_11
    goto :goto_a

    .line 1059
    :cond_12
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v9

    iget-object v11, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v13, v1, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    iget-object v12, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    move/from16 v22, v0

    .end local v0    # "registerAppInfoToArt":Z
    .local v22, "registerAppInfoToArt":Z
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    move-object v0, v12

    move v12, v8

    move-object/from16 v16, v13

    move-object v13, v7

    move-object/from16 v23, v14

    .end local v14    # "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v23, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v14, v6

    move-object/from16 v24, v15

    .end local v15    # "sharedLibraries":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/ClassLoader;>;Ljava/util/List<Ljava/lang/ClassLoader;>;>;"
    .local v24, "sharedLibraries":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/ClassLoader;>;Ljava/util/List<Ljava/lang/ClassLoader;>;>;"
    move-object/from16 v15, v16

    move-object/from16 v16, v0

    move-object/from16 v18, v23

    invoke-virtual/range {v9 .. v19}, Landroid/app/ApplicationLoaders;->getClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    .line 1064
    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v9, v0}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 1066
    invoke-direct {v1, v5}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1068
    const/4 v0, 0x1

    move/from16 v22, v0

    .end local v22    # "registerAppInfoToArt":Z
    .restart local v0    # "registerAppInfoToArt":Z
    goto :goto_b

    .line 1026
    .end local v5    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v23    # "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "sharedLibraries":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/ClassLoader;>;Ljava/util/List<Ljava/lang/ClassLoader;>;>;"
    :cond_13
    move/from16 v22, v0

    .line 1071
    .end local v0    # "registerAppInfoToArt":Z
    .restart local v22    # "registerAppInfoToArt":Z
    :goto_b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1073
    invoke-direct/range {p0 .. p0}, Landroid/app/LoadedApk;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 1075
    .restart local v5    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_3
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v0

    iget-object v9, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v9, v3}, Landroid/app/ApplicationLoaders;->addNative(Ljava/lang/ClassLoader;Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1077
    invoke-direct {v1, v5}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1078
    goto :goto_c

    .line 1077
    :catchall_0
    move-exception v0

    invoke-direct {v1, v5}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1078
    throw v0

    .line 1081
    .end local v5    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_14
    :goto_c
    if-eqz v2, :cond_15

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 1082
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, "add":Ljava/lang/String;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v5

    iget-object v9, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v9, v0}, Landroid/app/ApplicationLoaders;->addPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 1085
    const/16 v22, 0x1

    .line 1099
    .end local v0    # "add":Ljava/lang/String;
    :cond_15
    if-eqz v22, :cond_16

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_16

    .line 1100
    invoke-direct/range {p0 .. p0}, Landroid/app/LoadedApk;->registerAppInfoToArt()V

    .line 1107
    :cond_16
    iget-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_17

    .line 1108
    iget-object v0, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    iget-object v5, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    new-instance v9, Landroid/content/pm/ApplicationInfo;

    iget-object v11, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v9, v11}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v5, v9}, Landroid/app/AppComponentFactory;->instantiateClassLoader(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 1111
    :cond_17
    return-void
.end method

.method private blacklist createSharedLibrariesLoaders(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .param p2, "isBundledApp"    # Z
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "libraryPermittedPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;>;"
        }
    .end annotation

    .line 784
    .local p1, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 791
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 792
    .local v0, "libsToLoadAfter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 793
    .local v1, "systemR":Landroid/content/res/Resources;
    const v2, 0x107011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 796
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v2, "loaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v3, "after":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/SharedLibraryInfo;

    .line 799
    .local v5, "info":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 803
    goto :goto_0

    .line 805
    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 807
    goto :goto_0

    .line 809
    :cond_2
    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 814
    invoke-virtual {p0, v5, p2, p3, p4}, Landroid/app/LoadedApk;->createSharedLibraryLoader(Landroid/content/pm/SharedLibraryInfo;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 817
    :cond_3
    invoke-virtual {p0, v5, p2, p3, p4}, Landroid/app/LoadedApk;->createSharedLibraryLoader(Landroid/content/pm/SharedLibraryInfo;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    .end local v5    # "info":Landroid/content/pm/SharedLibraryInfo;
    :goto_1
    goto :goto_0

    .line 821
    :cond_4
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 785
    .end local v0    # "libsToLoadAfter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "systemR":Landroid/content/res/Resources;
    .end local v2    # "loaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .end local v3    # "after":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    :cond_5
    :goto_2
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static greylist-max-o getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x400

    .line 341
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 340
    invoke-interface {v1, p0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 344
    nop

    .line 346
    if-nez v0, :cond_0

    .line 347
    const/4 v1, 0x0

    return-object v1

    .line 350
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    return-object v1

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getServiceDispatcherCommon(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;I)Landroid/app/IServiceConnection;
    .locals 4
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "flags"    # I

    .line 2066
    iget-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2067
    const/4 v1, 0x0

    .line 2068
    .local v1, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 2069
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v2, :cond_0

    .line 2071
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v1, v3

    .line 2073
    :cond_0
    if-nez v1, :cond_3

    .line 2074
    if-eqz p4, :cond_1

    .line 2075
    new-instance v3, Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {v3, p1, p2, p4, p5}, Landroid/app/LoadedApk$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/util/concurrent/Executor;I)V

    move-object v1, v3

    goto :goto_0

    .line 2077
    :cond_1
    new-instance v3, Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {v3, p1, p2, p3, p5}, Landroid/app/LoadedApk$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V

    move-object v1, v3

    .line 2080
    :goto_0
    if-nez v2, :cond_2

    .line 2081
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 2082
    iget-object v3, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    :cond_2
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2086
    :cond_3
    invoke-virtual {v1, p2, p3, p4}, Landroid/app/LoadedApk$ServiceDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 2088
    :goto_1
    invoke-virtual {v1}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2089
    .end local v1    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o initializeJavaContextClassLoader()V
    .locals 7

    .line 1296
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1297
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    iget-object v1, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1301
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1298
    const-wide/32 v3, 0x10000000

    invoke-static {v1, v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1302
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_5

    .line 1318
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1319
    .local v2, "sharedUserIdSet":Z
    :goto_0
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1321
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1322
    .local v5, "processNameNotDefault":Z
    :goto_1
    if-nez v2, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 1324
    .local v3, "sharable":Z
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 1325
    new-instance v4, Landroid/app/LoadedApk$WarningContextClassLoader;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>(Landroid/app/LoadedApk$WarningContextClassLoader-IA;)V

    goto :goto_3

    .line 1326
    :cond_4
    iget-object v4, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    :goto_3
    nop

    .line 1327
    .local v4, "contextClassLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1328
    return-void

    .line 1303
    .end local v2    # "sharedUserIdSet":Z
    .end local v3    # "sharable":Z
    .end local v4    # "contextClassLoader":Ljava/lang/ClassLoader;
    .end local v5    # "processNameNotDefault":Z
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get package info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; is package not installed?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist isSpeg()Z
    .locals 4

    .line 1164
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1166
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1167
    .local v0, "apkFile":Ljava/lang/String;
    if-nez v0, :cond_1

    return v1

    .line 1169
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/base.speg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    .local v1, "spegFile":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/LoadedApk;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 1178
    .local v2, "oldThreadPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    invoke-direct {p0, v2}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1178
    return v3

    .line 1180
    :catchall_0
    move-exception v3

    invoke-direct {p0, v2}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1181
    throw v3
.end method

.method private blacklist makeApplicationInner(ZLandroid/app/Instrumentation;Z)Landroid/app/Application;
    .locals 11
    .param p1, "forceDefaultAppClass"    # Z
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;
    .param p3, "allowDuplicateInstances"    # Z

    .line 1508
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 1509
    return-object v0

    .line 1511
    :cond_0
    const-string/jumbo v0, "makeApplication"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1513
    sget-object v0, Landroid/app/LoadedApk;->sApplications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1514
    :try_start_0
    iget-object v3, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    .line 1515
    .local v3, "cached":Landroid/app/Application;
    if-eqz v3, :cond_2

    .line 1518
    const-string v4, "android"

    iget-object v5, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1519
    const-string v4, "LoadedApk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App instance already created for package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " instance="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_1
    if-nez p3, :cond_2

    .line 1523
    iput-object v3, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 1524
    monitor-exit v0

    return-object v3

    .line 1529
    .end local v3    # "cached":Landroid/app/Application;
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1531
    const/4 v0, 0x0

    .line 1533
    .local v0, "app":Landroid/app/Application;
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v3

    .line 1534
    .local v3, "myProcessName":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->getCustomApplicationClassNameForProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1536
    .local v4, "appClass":Ljava/lang/String;
    if-nez p1, :cond_3

    if-nez v4, :cond_4

    .line 1537
    :cond_3
    const-string v4, "android.app.Application"

    .line 1541
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1542
    .local v5, "cl":Ljava/lang/ClassLoader;
    iget-object v6, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1543
    const-string v6, "initializeJavaContextClassLoader"

    invoke-static {v1, v2, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1545
    invoke-direct {p0}, Landroid/app/LoadedApk;->initializeJavaContextClassLoader()V

    .line 1546
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1550
    :cond_5
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;

    move-result-object v6

    .line 1552
    .local v6, "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    .local v8, "n":I
    :goto_0
    if-ge v7, v8, :cond_8

    .line 1553
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1554
    .local v9, "id":I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    const/16 v10, 0x7f

    if-ne v9, v10, :cond_6

    .line 1555
    goto :goto_1

    .line 1558
    :cond_6
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v5, v10, v9}, Landroid/app/LoadedApk;->rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 1552
    .end local v9    # "id":I
    :cond_7
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1561
    .end local v7    # "i":I
    .end local v8    # "n":I
    :cond_8
    iget-object v7, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-static {v7, p0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v7

    .line 1564
    .local v7, "appContext":Landroid/app/ContextImpl;
    invoke-static {v7}, Landroid/security/net/config/NetworkSecurityConfigProvider;->handleNewApplication(Landroid/content/Context;)V

    .line 1565
    iget-object v8, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v8, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v8, v5, v4, v7}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v8

    move-object v0, v8

    .line 1567
    invoke-virtual {v7, v0}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1575
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    .end local v6    # "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v7    # "appContext":Landroid/app/ContextImpl;
    goto :goto_2

    .line 1568
    :catch_0
    move-exception v5

    .line 1569
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, v0, v5}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1576
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    iput-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 1578
    if-nez p3, :cond_9

    .line 1579
    sget-object v5, Landroid/app/LoadedApk;->sApplications:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1580
    :try_start_2
    iget-object v6, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1584
    :cond_9
    :goto_3
    if-eqz p2, :cond_b

    .line 1586
    :try_start_3
    invoke-virtual {p2, v0}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1594
    goto :goto_4

    .line 1587
    :catch_1
    move-exception v5

    .line 1588
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {p2, v0, v5}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_4

    .line 1589
    :cond_a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1590
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create application "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1591
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1592
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1597
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1599
    return-object v0

    .line 1570
    .restart local v5    # "e":Ljava/lang/Exception;
    :cond_c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1571
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate application "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1573
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1529
    .end local v0    # "app":Landroid/app/Application;
    .end local v3    # "myProcessName":Ljava/lang/String;
    .end local v4    # "appClass":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static greylist-max-o makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 2
    .param p0, "activityThread"    # Landroid/app/ActivityThread;
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p2, "outZipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 467
    return-void
.end method

.method public static greylist-max-o makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p0, "activityThread"    # Landroid/app/ActivityThread;
    .param p1, "isBundledApp"    # Z
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread;",
            "Z",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p3, "outZipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "outLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 499
    .local v0, "appDir":Ljava/lang/String;
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 501
    .local v1, "libDir":Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 502
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {p3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 509
    :cond_0
    if-eqz p4, :cond_1

    .line 510
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 522
    :cond_1
    const/4 v2, 0x0

    .line 525
    .local v2, "instrumentationLibs":[Ljava/lang/String;
    if-eqz p0, :cond_7

    .line 526
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 527
    .local v3, "instrumentationPackageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 528
    .local v4, "instrumentationAppDir":Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 529
    .local v5, "instrumentationSplitAppDirs":[Ljava/lang/String;
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 531
    .local v6, "instrumentationLibDir":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 532
    .local v7, "instrumentedAppDir":Ljava/lang/String;
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 533
    .local v8, "instrumentedSplitAppDirs":[Ljava/lang/String;
    iget-object v9, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 535
    .local v9, "instrumentedLibDir":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 536
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 537
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 538
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 540
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v10

    if-nez v10, :cond_5

    .line 545
    if-eqz v5, :cond_4

    .line 546
    invoke-static {p3, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 549
    :cond_4
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 550
    if-eqz v8, :cond_5

    .line 551
    invoke-static {p3, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 556
    :cond_5
    if-eqz p4, :cond_6

    .line 557
    invoke-interface {p4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 559
    invoke-interface {p4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_6
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 564
    invoke-static {v3}, Landroid/app/LoadedApk;->getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 569
    .end local v3    # "instrumentationPackageName":Ljava/lang/String;
    .end local v4    # "instrumentationAppDir":Ljava/lang/String;
    .end local v5    # "instrumentationSplitAppDirs":[Ljava/lang/String;
    .end local v6    # "instrumentationLibDir":Ljava/lang/String;
    .end local v7    # "instrumentedAppDir":Ljava/lang/String;
    .end local v8    # "instrumentedSplitAppDirs":[Ljava/lang/String;
    .end local v9    # "instrumentedLibDir":Ljava/lang/String;
    :cond_7
    if-eqz p4, :cond_c

    .line 570
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 571
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_8
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 578
    iget v3, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_a

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/fake-libs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 580
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v4}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "64"

    goto :goto_0

    :cond_9
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 579
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_a
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 583
    .local v4, "apk":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!/lib/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v4    # "apk":Ljava/lang/String;
    goto :goto_1

    .line 587
    :cond_b
    if-eqz p1, :cond_c

    .line 592
    const-string v3, "java.library.path"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_c
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 599
    .local v3, "outSeenPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    invoke-static {v4, p2, v3, p4}, Landroid/app/LoadedApk;->appendSharedLibrariesLibPathsIfNeeded(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/util/Set;Ljava/util/List;)V

    .line 605
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_f

    .line 606
    const/4 v4, 0x0

    .line 607
    .local v4, "index":I
    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length v7, v6

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_f

    aget-object v9, v6, v8

    .line 609
    .local v9, "lib":Ljava/lang/String;
    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 610
    goto :goto_3

    .line 612
    :cond_d
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-interface {p3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 613
    invoke-interface {p3, v4, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 614
    add-int/lit8 v4, v4, 0x1

    .line 615
    invoke-static {v9, p2, p4}, Landroid/app/LoadedApk;->appendApkLibPathIfNeeded(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 607
    .end local v9    # "lib":Ljava/lang/String;
    :cond_e
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 620
    .end local v4    # "index":I
    :cond_f
    if-eqz v2, :cond_11

    .line 621
    array-length v4, v2

    move v6, v5

    :goto_4
    if-ge v6, v4, :cond_11

    aget-object v7, v2, v6

    .line 622
    .local v7, "lib":Ljava/lang/String;
    invoke-interface {p3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 623
    invoke-interface {p3, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 624
    invoke-static {v7, p2, p4}, Landroid/app/LoadedApk;->appendApkLibPathIfNeeded(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 621
    .end local v7    # "lib":Ljava/lang/String;
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 628
    :cond_11
    return-void
.end method

.method private blacklist registerAppInfoToArt()V
    .locals 11

    .line 1191
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1192
    return-void

    .line 1195
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 1197
    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    :cond_1
    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1200
    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1203
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1206
    return-void

    .line 1209
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 1210
    if-nez v1, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    .line 1211
    .local v3, "splitName":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1212
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 1211
    invoke-static {v4, v5, v3}, Landroid/content/pm/dex/ArtManager;->getCurrentProfilePath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1213
    .local v4, "curProfileFile":Ljava/lang/String;
    iget-object v5, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1214
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 1213
    invoke-static {v5, v6, v3}, Landroid/content/pm/dex/ArtManager;->getReferenceProfilePath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1215
    .local v5, "refProfileFile":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1216
    move v6, v2

    goto :goto_2

    .line 1217
    :cond_5
    const/4 v6, 0x2

    :goto_2
    nop

    .line 1218
    .local v6, "codePathType":I
    iget-object v7, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    new-array v8, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 1222
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v8, v9

    .line 1218
    invoke-static {v7, v4, v5, v8, v6}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1209
    .end local v3    # "splitName":Ljava/lang/String;
    .end local v4    # "curProfileFile":Ljava/lang/String;
    .end local v5    # "refProfileFile":Ljava/lang/String;
    .end local v6    # "codePathType":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1227
    .end local v1    # "i":I
    :cond_6
    invoke-direct {p0}, Landroid/app/LoadedApk;->isSpeg()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1229
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/app/LoadedApk$1;

    invoke-direct {v2, p0}, Landroid/app/LoadedApk$1;-><init>(Landroid/app/LoadedApk;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1255
    .local v1, "delayedRestorer":Ljava/lang/Thread;
    :try_start_0
    const-string/jumbo v2, "speg"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    goto :goto_3

    .line 1260
    :catch_0
    move-exception v2

    .line 1261
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Library not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SPEG"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .end local v1    # "delayedRestorer":Ljava/lang/Thread;
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_7
    :goto_3
    invoke-static {}, Landroid/app/DexLoadReporter;->getInstance()Landroid/app/DexLoadReporter;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/DexLoadReporter;->registerAppDataDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    return-void
.end method

.method private greylist rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .locals 6
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 1606
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1612
    .local v0, "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1616
    :try_start_1
    const-string/jumbo v1, "onResourcesLoaded"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1620
    .local v1, "callback":Ljava/lang/reflect/Method;
    nop

    .line 1624
    const/4 v3, 0x0

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1625
    return-void

    .line 1628
    :catch_0
    move-exception v2

    .line 1629
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .local v3, "cause":Ljava/lang/Throwable;
    goto :goto_0

    .line 1626
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 1627
    .local v2, "e":Ljava/lang/IllegalAccessException;
    move-object v3, v2

    .line 1630
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v3    # "cause":Ljava/lang/Throwable;
    nop

    .line 1632
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rewrite resource references for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1617
    .end local v1    # "callback":Ljava/lang/reflect/Method;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 1619
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return-void

    .line 1607
    .end local v0    # "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 1610
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No resource references to update in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoadedApk"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return-void
.end method

.method private greylist-max-o setApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 417
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 418
    .local v0, "myUid":I
    invoke-static {p1}, Landroid/app/LoadedApk;->adjustNativeLibraryPaths(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 419
    iput-object p1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 420
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 421
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 422
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mLegacyOverlayDirs:[Ljava/lang/String;

    .line 423
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mOverlayPaths:[Ljava/lang/String;

    .line 424
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 425
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 426
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/FileUtils;->newFileOrNull(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 427
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/FileUtils;->newFileOrNull(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    .line 428
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/FileUtils;->newFileOrNull(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    .line 431
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitNames:[Ljava/lang/String;

    .line 432
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    .line 433
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_1

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    .line 434
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitClassLoaderNames:[Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/LoadedApk;->mSplitNames:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 437
    new-instance v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    invoke-direct {v1, p0, v2}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;-><init>(Landroid/app/LoadedApk;Landroid/util/SparseArray;)V

    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitLoader:Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

    .line 439
    :cond_2
    return-void
.end method

.method private blacklist setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/os/StrictMode$ThreadPolicy;

    .line 836
    iget-object v0, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 837
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 839
    :cond_0
    return-void
.end method

.method private blacklist setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/os/StrictMode$VmPolicy;

    .line 853
    iget-object v0, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 854
    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 856
    :cond_0
    return-void
.end method

.method private native blacklist spegRestore()V
.end method


# virtual methods
.method blacklist createSharedLibraryLoader(Landroid/content/pm/SharedLibraryInfo;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 16
    .param p1, "sharedLibrary"    # Landroid/content/pm/SharedLibraryInfo;
    .param p2, "isBundledApp"    # Z
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "libraryPermittedPath"    # Ljava/lang/String;

    .line 761
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v1

    .line 762
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    .line 762
    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct {v0, v2, v13, v14, v15}, Landroid/app/LoadedApk;->createSharedLibrariesLoaders(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 765
    .local v2, "sharedLibraries":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/ClassLoader;>;Ljava/util/List<Ljava/lang/ClassLoader;>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    goto :goto_0

    .line 766
    :cond_0
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_0
    nop

    .line 770
    .local v4, "jars":Ljava/lang/String;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v3

    iget-object v5, v0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v6

    check-cast v11, Ljava/util/List;

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, Ljava/util/List;

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v12}, Landroid/app/ApplicationLoaders;->getSharedLibraryClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v3

    return-object v3
.end method

.method public greylist-max-o forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "r"    # Landroid/content/BroadcastReceiver;

    .line 1727
    iget-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1728
    :try_start_0
    iget-object v1, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1729
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    const/4 v2, 0x0

    .line 1730
    .local v2, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v1, :cond_3

    .line 1731
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v2, v3

    .line 1732
    if-eqz v2, :cond_3

    .line 1733
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1735
    iget-object v3, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    :cond_0
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1738
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    .line 1739
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1740
    .local v3, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-nez v3, :cond_1

    .line 1741
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v4

    .line 1742
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Originally unregistered here:"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1746
    .local v4, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1747
    invoke-virtual {v2, v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->setUnregisterLocation(Ljava/lang/RuntimeException;)V

    .line 1748
    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    .end local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    .line 1751
    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1754
    :cond_3
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    .line 1755
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1756
    .restart local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v3, :cond_5

    .line 1757
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v2, v4

    .line 1758
    if-nez v2, :cond_4

    goto :goto_0

    .line 1759
    :cond_4
    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getUnregisterLocation()Ljava/lang/RuntimeException;

    move-result-object v4

    .line 1760
    .restart local v4    # "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistering Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unregistered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "r":Landroid/content/BroadcastReceiver;
    throw v5

    .line 1765
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "r":Landroid/content/BroadcastReceiver;
    :cond_5
    :goto_0
    if-nez p1, :cond_6

    .line 1766
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unbinding Receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from Context that is no longer in use: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "r":Landroid/content/BroadcastReceiver;
    throw v4

    .line 1769
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "r":Landroid/content/BroadcastReceiver;
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver not registered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "r":Landroid/content/BroadcastReceiver;
    throw v4

    .line 1772
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v2    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "r":Landroid/content/BroadcastReceiver;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final greylist-max-o forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/content/ServiceConnection;

    .line 2107
    iget-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2108
    :try_start_0
    iget-object v1, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    .line 2109
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 2110
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    const/4 v2, 0x0

    .line 2111
    .local v2, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v1, :cond_3

    .line 2112
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v2, v3

    .line 2113
    if-eqz v2, :cond_3

    .line 2115
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    .line 2117
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2118
    iget-object v3, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    :cond_0
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 2121
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    .line 2122
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 2123
    .local v3, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-nez v3, :cond_1

    .line 2124
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v4

    .line 2125
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Originally unbound here:"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2129
    .local v4, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2130
    invoke-virtual {v2, v4}, Landroid/app/LoadedApk$ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    .line 2131
    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    .end local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2136
    :cond_3
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    .line 2137
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 2138
    .restart local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v3, :cond_5

    .line 2139
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v2, v4

    .line 2140
    if-nez v2, :cond_4

    goto :goto_0

    .line 2141
    :cond_4
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    move-result-object v4

    .line 2142
    .restart local v4    # "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unbound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "c":Landroid/content/ServiceConnection;
    throw v5

    .line 2147
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "c":Landroid/content/ServiceConnection;
    :cond_5
    :goto_0
    if-nez p1, :cond_6

    .line 2148
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unbinding Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from Context that is no longer in use: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "c":Landroid/content/ServiceConnection;
    throw v4

    .line 2151
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "c":Landroid/content/ServiceConnection;
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service not registered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "c":Landroid/content/ServiceConnection;
    throw v4

    .line 2153
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "c":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getAppDir()Ljava/lang/String;
    .locals 1

    .line 1391
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getAppFactory()Landroid/app/AppComponentFactory;
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    return-object v0
.end method

.method greylist-max-o getApplication()Landroid/app/Application;
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public greylist getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 308
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public greylist getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 1452
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public greylist getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 1149
    iget-object v0, p0, Landroid/app/LoadedApk;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1150
    :try_start_0
    iget-object v1, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    .line 1151
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/app/LoadedApk;->createOrUpdateClassLoaderLocked(Ljava/util/List;)V

    .line 1153
    :cond_0
    iget-object v1, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit v0

    return-object v1

    .line 1154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .line 321
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCredentialProtectedDataDirFile()Ljava/io/File;
    .locals 1

    .line 1447
    iget-object v0, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public greylist-max-o getDataDir()Ljava/lang/String;
    .locals 1

    .line 1434
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getDataDirFile()Ljava/io/File;
    .locals 1

    .line 1439
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public greylist-max-o getDeviceProtectedDataDirFile()Ljava/io/File;
    .locals 1

    .line 1443
    iget-object v0, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public greylist-max-o getLibDir()Ljava/lang/String;
    .locals 1

    .line 1395
    iget-object v0, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getOverlayDirs()[Ljava/lang/String;
    .locals 1

    .line 1417
    iget-object v0, p0, Landroid/app/LoadedApk;->mLegacyOverlayDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayPaths()[Ljava/lang/String;
    .locals 1

    .line 1424
    iget-object v0, p0, Landroid/app/LoadedApk;->mOverlayPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPackageName()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;
    .locals 10
    .param p1, "r"    # Landroid/content/BroadcastReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "instrumentation"    # Landroid/app/Instrumentation;
    .param p5, "registered"    # Z

    .line 1698
    iget-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1699
    const/4 v1, 0x0

    .line 1700
    .local v1, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    const/4 v2, 0x0

    .line 1701
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz p5, :cond_0

    .line 1702
    :try_start_0
    iget-object v3, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move-object v2, v3

    .line 1703
    if-eqz v2, :cond_0

    .line 1704
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, v3

    goto :goto_0

    .line 1722
    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1707
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 1708
    new-instance v9, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v3, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    move-object v1, v9

    .line 1710
    if-eqz p5, :cond_3

    .line 1711
    if-nez v2, :cond_1

    .line 1712
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 1713
    iget-object v3, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    :cond_1
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1718
    :cond_2
    invoke-virtual {v1, p2, p3}, Landroid/app/LoadedApk$ReceiverDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1720
    :cond_3
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    .line 1721
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1722
    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getResDir()Ljava/lang/String;
    .locals 1

    .line 1400
    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getResources()Landroid/content/res/Resources;
    .locals 14

    .line 1457
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 1460
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    .local v0, "splitPaths":[Ljava/lang/String;
    nop

    .line 1466
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_0

    .line 1467
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/app/ResourcesManager;->initializeApplicationPaths(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1472
    :cond_0
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/LoadedApk;->mLegacyOverlayDirs:[Ljava/lang/String;

    iget-object v6, p0, Landroid/app/LoadedApk;->mOverlayPaths:[Ljava/lang/String;

    iget-object v4, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1474
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    .line 1475
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1472
    move-object v4, v0

    invoke-virtual/range {v1 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    goto :goto_0

    .line 1461
    .end local v0    # "splitPaths":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1463
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "null split not found"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1483
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final greylist getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;
    .locals 6
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .line 2056
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk;->getServiceDispatcherCommon(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;I)Landroid/app/IServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/util/concurrent/Executor;I)Landroid/app/IServiceConnection;
    .locals 6
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "flags"    # I

    .line 2061
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk;->getServiceDispatcherCommon(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;I)Landroid/app/IServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSplitAppDirs()[Ljava/lang/String;
    .locals 1

    .line 1404
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 1
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitLoader:Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0

    .line 742
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->getClassLoaderForSplit(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitLoader:Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    return-object v0

    .line 749
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->getSplitPathsForSplit(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSplitResDirs()[Ljava/lang/String;
    .locals 1

    .line 1409
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTargetSdkVersion()I
    .locals 1

    .line 312
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method greylist-max-o installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 277
    nop

    .line 278
    iput-object p1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 279
    iput-object p2, p0, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    .line 280
    invoke-direct {p0, p1, p2}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 281
    iget-object v1, p0, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    new-instance v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AppComponentFactory;->instantiateClassLoader(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 283
    return-void
.end method

.method public greylist-max-o isSecurityViolation()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    return v0
.end method

.method public greylist-max-r lookupServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;)Landroid/app/IServiceConnection;
    .locals 4
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;

    .line 2095
    iget-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2096
    const/4 v1, 0x0

    .line 2097
    .local v1, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 2098
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v2, :cond_0

    .line 2099
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v1, v3

    .line 2101
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    monitor-exit v0

    return-object v3

    .line 2102
    .end local v1    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 1
    .param p1, "forceDefaultAppClass"    # Z
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    .line 1493
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;Z)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 1
    .param p1, "forceDefaultAppClass"    # Z
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    .line 1502
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;Z)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .line 1638
    invoke-static {}, Landroid/os/StrictMode;->vmRegistrationLeaksEnabled()Z

    move-result v0

    .line 1639
    .local v0, "reportRegistrationLeaks":Z
    iget-object v1, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1640
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    .line 1641
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1642
    .local v2, "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v2, :cond_1

    .line 1643
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1644
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1645
    .local v4, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    new-instance v5, Landroid/app/IntentReceiverLeaked;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has leaked IntentReceiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1647
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was originally registered here. Are you missing a call to unregisterReceiver()?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v5, "leak":Landroid/app/IntentReceiverLeaked;
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getLocation()Landroid/app/IntentReceiverLeaked;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/IntentReceiverLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/IntentReceiverLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1651
    const-string v6, "ActivityThread"

    invoke-virtual {v5}, Landroid/app/IntentReceiverLeaked;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1652
    if-eqz v0, :cond_0

    .line 1653
    invoke-static {v5}, Landroid/os/StrictMode;->onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1656
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    .line 1657
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v7

    .line 1656
    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1660
    nop

    .line 1643
    .end local v4    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v5    # "leak":Landroid/app/IntentReceiverLeaked;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1658
    .restart local v4    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v5    # "leak":Landroid/app/IntentReceiverLeaked;
    :catch_0
    move-exception v6

    .line 1659
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    .end local v0    # "reportRegistrationLeaks":Z
    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "who":Ljava/lang/String;
    .end local p3    # "what":Ljava/lang/String;
    throw v7

    .line 1663
    .end local v3    # "i":I
    .end local v4    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v5    # "leak":Landroid/app/IntentReceiverLeaked;
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v0    # "reportRegistrationLeaks":Z
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "who":Ljava/lang/String;
    .restart local p3    # "what":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    nop

    .end local v2    # "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1666
    iget-object v2, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1668
    :try_start_3
    iget-object v1, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    .line 1669
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1670
    .local v1, "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_3

    .line 1671
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1672
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 1673
    .local v4, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    new-instance v5, Landroid/app/ServiceConnectionLeaked;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has leaked ServiceConnection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1675
    invoke-virtual {v4}, Landroid/app/LoadedApk$ServiceDispatcher;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was originally bound here"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    .line 1676
    .local v5, "leak":Landroid/app/ServiceConnectionLeaked;
    invoke-virtual {v4}, Landroid/app/LoadedApk$ServiceDispatcher;->getLocation()Landroid/app/ServiceConnectionLeaked;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ServiceConnectionLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ServiceConnectionLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1677
    const-string v6, "ActivityThread"

    invoke-virtual {v5}, Landroid/app/ServiceConnectionLeaked;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1678
    if-eqz v0, :cond_2

    .line 1679
    invoke-static {v5}, Landroid/os/StrictMode;->onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1682
    :cond_2
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    .line 1683
    invoke-virtual {v4}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v7

    .line 1682
    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1686
    nop

    .line 1687
    :try_start_5
    invoke-virtual {v4}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    .line 1671
    .end local v4    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v5    # "leak":Landroid/app/ServiceConnectionLeaked;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1684
    .restart local v4    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v5    # "leak":Landroid/app/ServiceConnectionLeaked;
    :catch_1
    move-exception v6

    .line 1685
    .restart local v6    # "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    .end local v0    # "reportRegistrationLeaks":Z
    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "who":Ljava/lang/String;
    .end local p3    # "what":Ljava/lang/String;
    throw v7

    .line 1690
    .end local v3    # "i":I
    .end local v4    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v5    # "leak":Landroid/app/ServiceConnectionLeaked;
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v0    # "reportRegistrationLeaks":Z
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "who":Ljava/lang/String;
    .restart local p3    # "what":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    nop

    .end local v1    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    monitor-exit v2

    .line 1693
    return-void

    .line 1692
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 1664
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method public greylist-max-o setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 325
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, p1}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 326
    return-void
.end method

.method public blacklist setOverlayDirs([Ljava/lang/String;)V
    .locals 0
    .param p1, "overlayDirs"    # [Ljava/lang/String;

    .line 1429
    iput-object p1, p0, Landroid/app/LoadedApk;->mLegacyOverlayDirs:[Ljava/lang/String;

    .line 1430
    return-void
.end method

.method blacklist setSdkSandboxStorage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sdkSandboxClientAppVolumeUuid"    # Ljava/lang/String;
    .param p2, "sdkSandboxClientAppPackage"    # Ljava/lang/String;

    .line 443
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 444
    .local v0, "userId":I
    nop

    .line 445
    invoke-static {p1, v0, p2}, Landroid/os/Environment;->getDataMiscDeSharedSdkSandboxDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    .line 448
    nop

    .line 449
    invoke-static {p1, v0, p2}, Landroid/os/Environment;->getDataMiscCeSharedSdkSandboxDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    .line 453
    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    goto :goto_0

    .line 458
    :cond_0
    iget-object v1, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 460
    :goto_0
    iget-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public greylist-max-o updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 19
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 362
    .local p2, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Landroid/app/LoadedApk;->setApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 365
    .local v3, "newPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-static {v0, v2, v3}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 368
    .local v4, "addedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_4

    .line 369
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 370
    .local v5, "path":Ljava/lang/String;
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, "apkName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 372
    .local v7, "match":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 373
    .local v9, "oldPath":Ljava/lang/String;
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 374
    .local v10, "oldApkName":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 375
    const/4 v7, 0x1

    .line 376
    goto :goto_2

    .line 378
    .end local v9    # "oldPath":Ljava/lang/String;
    .end local v10    # "oldApkName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 379
    :cond_1
    :goto_2
    if-nez v7, :cond_2

    .line 380
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "apkName":Ljava/lang/String;
    .end local v7    # "match":Z
    :cond_2
    goto :goto_0

    :cond_3
    goto :goto_3

    .line 384
    :cond_4
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    :goto_3
    iget-object v5, v1, Landroid/app/LoadedApk;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 387
    :try_start_0
    invoke-direct {v1, v4}, Landroid/app/LoadedApk;->createOrUpdateClassLoaderLocked(Ljava/util/List;)V

    .line 388
    iget-object v0, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 391
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    .local v9, "splitPaths":[Ljava/lang/String;
    nop

    .line 399
    :try_start_2
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v1, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    iget-object v10, v1, Landroid/app/LoadedApk;->mLegacyOverlayDirs:[Ljava/lang/String;

    iget-object v11, v1, Landroid/app/LoadedApk;->mOverlayPaths:[Ljava/lang/String;

    iget-object v12, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v15

    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    iget-object v0, v1, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_5

    const/16 v17, 0x0

    goto :goto_4

    .line 403
    :cond_5
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v0

    move-object/from16 v17, v0

    :goto_4
    iget-object v0, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 399
    move-object/from16 v18, v0

    invoke-virtual/range {v6 .. v18}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    goto :goto_5

    .line 392
    .end local v9    # "splitPaths":[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 394
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "null split not found"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "newPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "addedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v6

    .line 412
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "newPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "addedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    iget-object v0, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, v2, v0}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 414
    return-void

    .line 412
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
