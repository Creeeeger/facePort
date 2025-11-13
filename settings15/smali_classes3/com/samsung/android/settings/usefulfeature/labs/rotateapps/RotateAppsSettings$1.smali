.class public final Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/AppPickerState$OnStateChangeListener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    iget-object v1, v0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mDescription:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;)V

    invoke-virtual {v0, p1, v1}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;->mAppPickerView:Landroidx/picker/widget/SeslAppPickerView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    return-void
.end method

.method public onStateAllChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroidx/picker/model/AppInfo;Z)V
    .locals 2

    iget-object p1, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPackageOrientation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPolicyFromLegacyFlag(I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSwitchOrientationPolicyFlag(IZ)I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    const-string v1, "com.android.samsung.utilityapp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.samsung.batteryusage"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    const-string v1, "com.samsung.android.statsd"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    const-string v1, "com.samsung.android.appbooster"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    const-string v1, "com.samsung.android.thermalguardian"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    const-string v1, "com.samsung.android.memoryguardian"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    const-string v1, "com.samsung.android.mediaguardian"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(ILjava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/rotateapps/RotateAppsSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    const p0, 0x10a72

    const p2, 0x10a73

    invoke-static {p0, p2, v0, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    return-void
.end method
