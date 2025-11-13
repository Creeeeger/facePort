.class public final Lcom/android/settingslib/applications/ApplicationsState$30;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field public final synthetic $r8$classId:I

.field public mUnknownSourcePackageInfos:Ljava/lang/Object;

.field public mUnknownSourcePackageNames:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageInfos:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageNames:Ljava/lang/Object;

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$30()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1

    iget v0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageInfos:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageNames:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageNames:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final init()V
    .locals 1

    iget v0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageInfos:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init()V

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageNames:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {p0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init()V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    iget v0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageInfos:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageNames:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getUnknownSourcePackages(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageInfos:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageNames:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageInfos:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$30;->mUnknownSourcePackageNames:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
