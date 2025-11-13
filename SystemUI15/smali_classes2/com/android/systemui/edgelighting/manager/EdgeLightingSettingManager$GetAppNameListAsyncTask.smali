.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;->this$0:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;-><init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;->this$0:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v0

    iget v5, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v9, "EdgeLightingSettingManager"

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v14, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_2
    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v13, v6

    :goto_2
    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    if-eqz v7, :cond_3

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    goto :goto_3

    :cond_3
    move-object v0, v6

    :goto_3
    if-eqz v0, :cond_4

    iget v0, v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    move/from16 v16, v0

    goto :goto_4

    :cond_4
    move/from16 v16, v4

    :goto_4
    new-instance v0, Lcom/android/systemui/edgelighting/data/AppInfo;

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/edgelighting/data/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v0, "Error..."

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAppNameComparator:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/AppInfo;

    if-nez v0, :cond_7

    const-string/jumbo v0, "updateAppList item is null.."

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    return-object v2
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/util/List;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;->this$0:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    new-instance v2, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;

    const v3, -0xb37941

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
