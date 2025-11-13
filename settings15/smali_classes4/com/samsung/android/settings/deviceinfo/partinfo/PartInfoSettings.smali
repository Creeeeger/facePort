.class public Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field public isExistUnknownPart:Z

.field public mContext:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;

    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f1701d6

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;->isExistUnknownPart:Z

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string/jumbo v1, "part_screen_category"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/ScreenPreferenceController;

    const-string/jumbo v3, "part_screen"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/ScreenPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/CoverScreenPreferenceController;

    const-string/jumbo v3, "part_cover_screen"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/CoverScreenPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/MainScreenPreferenceController;

    const-string/jumbo v3, "part_main_screen"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/MainScreenPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string/jumbo v1, "part_camera_category"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/FrontCameraPreferenceController;

    const-string/jumbo v3, "part_front_camera"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/FrontCameraPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/FrontUltraWideCameraPreferenceController;

    const-string/jumbo v3, "part_front_ultra_wide_camera"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/FrontUltraWideCameraPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/RearWideCameraPreferenceController;

    const-string/jumbo v3, "part_rear_wide_camera"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/RearWideCameraPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/RearUltraWideCameraPreferenceController;

    const-string/jumbo v3, "part_rear_ultra_wide_camera"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/RearUltraWideCameraPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/RearTeleCameraPreferenceController;

    const-string/jumbo v3, "part_rear_tele_camera"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/RearTeleCameraPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/RearSuperTeleCameraPreferenceController;

    const-string/jumbo v3, "part_rear_super_tele_camera"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/RearSuperTeleCameraPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/RearMacroCameraPreferenceController;

    const-string/jumbo v3, "part_rear_macro_camera"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/RearMacroCameraPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/RearDepthCameraPreferenceController;

    const-string/jumbo v3, "part_rear_depth_camera"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/RearDepthCameraPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/InnerCameraPreferenceController;

    const-string/jumbo v3, "part_inner_camera"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/InnerCameraPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string/jumbo v1, "part_other_category"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/partinfo/MainBoardPreferenceController;

    const-string/jumbo v3, "part_main_board"

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/settings/deviceinfo/partinfo/MainBoardPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PartInfoSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0xdedb

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701d6

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string p1, "PartInfoSettings"

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/PRH/genuine/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings$1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get file list : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    array-length v5, v0

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v0, v6

    invoke-static {v1, v7}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v8

    new-array v8, v8, [B

    invoke-virtual {v7, v8}, Ljava/io/FileInputStream;->read([B)I

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v7

    goto :goto_3

    :catchall_0
    move-exception v8

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_5
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v7

    move-object v9, v2

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Fail to get value from EFS : "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v9, :cond_1

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v9, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_1
    move-object v7, v2

    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    const-string v8, "99"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_6

    :cond_2
    move v7, v4

    :goto_6
    if-eqz v7, :cond_3

    move v4, v3

    goto :goto_7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_7
    iput-boolean v4, p0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;->isExistUnknownPart:Z

    if-eqz v4, :cond_5

    const-string/jumbo p1, "unknown_part_description"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f141bd6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f141bd5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;->isExistUnknownPart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    const v2, 0x7f141bca

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-wide/32 v2, 0xa220268

    invoke-static {v0, v2, v3}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    const v2, 0x7f140a79

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x10

    const-string v2, "com.samsung.android.svcagent"

    const v3, 0xdedb

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const p1, 0xdedd

    invoke-static {v3, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string p1, "Part Replacement History"

    const-string/jumbo v0, "ruybwmwaqy"

    :try_start_0
    invoke-static {v2, p1, v0}, Lcom/android/settings/Utils;->getContactUsIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "can not link to Contact Us : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PartInfoSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.android.service.svcagent.INTENT_ACTION_VOC_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const p1, 0xdedc

    invoke-static {v3, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f141bd3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v4
.end method
