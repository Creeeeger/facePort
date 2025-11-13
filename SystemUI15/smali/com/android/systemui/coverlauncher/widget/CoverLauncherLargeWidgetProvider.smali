.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sWidgetOptions:Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;


# instance fields
.field public mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->sWidgetOptions:Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 8

    const-string/jumbo p0, "visible"

    const/4 v0, 0x0

    invoke-virtual {p4, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sget-object v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->sWidgetOptions:Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;

    iget-boolean v2, v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->visibleOption:Z

    const-string v3, ", id="

    const-string v4, "CoverLauncherWidgetProvider"

    const/4 v5, 0x1

    if-eq p0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "visible changed to "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p0, v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->visibleOption:Z

    if-nez p0, :cond_0

    :goto_0
    move p0, v5

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "notification_badging"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_1
    const-string v2, "appIconPackageName"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v6, v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->appIconPkgOption:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object p0, v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->appIconPkgOption:Ljava/lang/String;

    const-string v6, "appIcon pkg is updated to "

    const-string v7, " from "

    invoke-static {v6, v2, v7, p0, v3}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p3, v4, p0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iput-object v2, v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->appIconPkgOption:Ljava/lang/String;

    move p0, v5

    :cond_2
    const-string v2, "config_ui_mode"

    invoke-virtual {p4, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p4

    iget v0, v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->uiModeOption:I

    if-eq p4, v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ui mode is changed to "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p4, v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->uiModeOption:I

    goto :goto_2

    :cond_3
    move v5, p0

    :goto_2
    if-eqz v5, :cond_4

    filled-new-array {p3}, [I

    move-result-object p0

    sget-object p3, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->Companion:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;->getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    move-result-object p1

    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;-><init>([ILcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;Landroid/appwidget/AppWidgetManager;)V

    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public final onDeleted(Landroid/content/Context;[I)V
    .locals 0

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onDeleted, id="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CoverLauncherWidgetProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoverLauncherWidgetProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "action_launch_app"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    invoke-direct {v0, p1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    :cond_0
    const-string p1, "key_package_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_profile_id"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    if-eqz p0, :cond_4

    const-string v0, "CoverLauncherPackageUtils"

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to get packageInfo "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->tryUpdateAppWidget()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const-string p2, "packageInfo is null : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->tryUpdateAppWidget()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->sDimension:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "app_name"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CVSE1045"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForSystemUI(Ljava/lang/String;Ljava/util/HashMap;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;-><init>(Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_3
    const-string p0, "com.samsung.settings.ACTION_UPDATE_WIDGET"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string/jumbo p0, "update widget from settings"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->Companion:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;->getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->updateAppWidget(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "onUpdate, id="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CoverLauncherWidgetProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->Companion:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$Companion;->getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    move-result-object p0

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;

    invoke-direct {v0, p3, p0, p2}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$updateAppWidget$1;-><init>([ILcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;Landroid/appwidget/AppWidgetManager;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
