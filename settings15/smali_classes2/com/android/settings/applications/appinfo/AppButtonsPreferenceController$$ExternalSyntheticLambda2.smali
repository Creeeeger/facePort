.class public final synthetic Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$mgetPackageNameForMetric(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x36a

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v1, v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$msetGoogleCoreControl(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmPm(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$ArchiveButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->$r8$lambda$u9yy_QpXRl-EI3SEK5-n6MhQLqw(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
