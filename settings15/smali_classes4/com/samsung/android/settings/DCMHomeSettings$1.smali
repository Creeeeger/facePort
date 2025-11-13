.class public final Lcom/samsung/android/settings/DCMHomeSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/DCMHomeSettings;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/DCMHomeSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iput p2, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    iget v2, v0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomePkg:Ljava/lang/String;

    iget v1, v0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    const-string v3, "changeHome "

    const-string v4, "DCMHomeSettings"

    invoke-static {v1, v3, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    const-string v3, "android.intent.category.HOME"

    const-string v5, "android.intent.action.MAIN"

    if-nez v1, :cond_0

    const-string v1, "changeHome) info is null."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/ComponentName;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    iget-object v11, v2, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    iget-object v11, v2, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v14, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v7, v10

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v2, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v15, v13, v14, v12}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_1

    iget-object v12, v2, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    iget-object v10, v2, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v11, v1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {v10, v6, v11, v7, v8}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    iget-boolean v6, v2, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.nttdocomo.android.dhome"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_7

    const-string v6, "com.nttdocomo.android.homezozo"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.nttdocomo.android.paletteui"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, "com.sec.android.app.launcher"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v9, v9}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_2

    :cond_5
    const-string v6, "com.sec.android.app.easylauncher"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, v7, v9}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v9, v7}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {v2, v9, v7}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    :goto_2
    iget-object v0, v0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "startLauncher"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
