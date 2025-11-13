.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $appWidgetIds:[I

.field public final synthetic $appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final synthetic this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;


# direct methods
.method public constructor <init>([ILcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;Landroid/appwidget/AppWidgetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->$appWidgetIds:[I

    iput-object p2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    iput-object p3, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->$appWidgetIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const v5, 0x7f0a04a5

    if-ge v3, v1, :cond_6

    aget v6, v0, v3

    iget-object v7, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    iget-object v7, v7, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->appWidgetUpdating:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "CoverLauncherWidgetViewController"

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    iget-object v7, v7, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->appWidgetUpdating:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "skip update cover appWidget"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    iget-object v7, v7, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->appWidgetUpdating:Ljava/util/HashMap;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    iget-object v4, v4, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mPackageUtils$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getAppListFromDB(Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string/jumbo v9, "update cover appWidget id="

    invoke-static {v6, v9, v8}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "semEnableSelectZeroOnLastFocusTab"

    sget-object v11, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->Companion:Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils$Companion;

    iget-object v12, v9, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_2

    const v11, 0x7f0d0576

    goto :goto_2

    :cond_2
    const/16 v11, 0x8

    if-le v4, v11, :cond_3

    const v11, 0x7f0d0574

    goto :goto_2

    :cond_3
    const v11, 0x7f0d0575

    :goto_2
    new-instance v13, Landroid/widget/RemoteViews;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v11, "appWidgetId"

    if-lez v4, :cond_4

    new-instance v4, Landroid/content/Intent;

    iget-object v12, v9, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeRemoteViewService;

    invoke-direct {v4, v12, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v13, v5, v4}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    new-instance v4, Landroid/content/Intent;

    iget-object v12, v9, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;

    invoke-direct {v4, v12, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v12, "action_launch_app"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, v9, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    mul-int/lit8 v11, v6, 0x64

    const/high16 v12, 0x12000000

    invoke-static {v9, v11, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v13, v5, v4}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    const/4 v4, 0x4

    const-string v9, "setNumColumns"

    invoke-virtual {v13, v5, v9, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :try_start_0
    const-class v4, Landroid/widget/GridView;

    new-array v9, v7, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v2

    invoke-virtual {v4, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-virtual {v13, v5, v10, v7}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " semEnableSelectZeroOnLastFocusTab"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-nez v4, :cond_5

    new-instance v4, Landroid/content/Intent;

    iget-object v5, v9, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetHelper;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x34000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object v8, v9, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    mul-int/lit8 v9, v6, 0x64

    const/high16 v10, 0xa000000

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v8, v9, v4, v10, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v4

    const v5, 0x7f0a09ef

    invoke-virtual {v13, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v6, v13}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    iget-object v5, v5, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->appWidgetUpdating:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v7

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;->$appWidgetIds:[I

    invoke-virtual {v0, p0, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    :cond_7
    return-void
.end method
