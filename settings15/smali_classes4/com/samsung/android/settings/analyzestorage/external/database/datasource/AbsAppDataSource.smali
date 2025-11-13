.class public abstract Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final UNUSED_APP_SKIP_LIST:[Ljava/lang/String;


# instance fields
.field public mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v6, "com.sec.android.security.NetworkGuard"

    const-string v7, "com.sec.android.gallery3d"

    const-string v0, "com.samsung.android.sm"

    const-string v1, "com.samsung.android.lool"

    const-string v2, "com.samsung.android.sm.provider"

    const-string v3, "com.samsung.android.sm.policy"

    const-string v4, "com.cleanmaster.sdk"

    const-string v5, "com.sec.android.security.LogGuard"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->UNUSED_APP_SKIP_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AbsAppDataSource"

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getTargetAppList(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x2480

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->isSuitableTargetApp(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->UNUSED_APP_SKIP_LIST:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getTargetAppList() ] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not available."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/AbsAppDataSource;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getTargetAppList() ] Filtered Target App Count : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public isSuitableTargetApp(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
