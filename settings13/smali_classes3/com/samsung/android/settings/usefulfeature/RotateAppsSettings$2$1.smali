.class Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;
.super Ljava/lang/Object;
.source "RotateAppsSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;

.field final synthetic val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

.field final synthetic val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->this$1:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 315
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget-object v0, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPackageOrientation(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mState:I

    .line 316
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget v0, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mState:I

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPolicyFromLegacyFlag(I)I

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    .line 317
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget v0, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    invoke-static {p2, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setSwitchOrientationPolicyFlag(ZI)I

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    .line 318
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget v0, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getOrientationSwitchState(I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mSwitchState:Z

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "policy : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget v0, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / switch : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget-boolean v0, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mSwitchState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " / value : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RotateAppsSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget-object v0, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    invoke-static {v0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 323
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    const-string v0, "com.android.samsung.utilityapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget p1, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    const-string v0, "com.android.samsung.batteryusage"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 325
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget p1, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    const-string v0, "com.samsung.android.statsd"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 326
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget p1, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    const-string v0, "com.samsung.android.appbooster"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 327
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget p1, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    const-string v0, "com.samsung.android.thermalguardian"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 328
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget p1, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    const-string v0, "com.samsung.android.memoryguardian"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 329
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget p1, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    const-string v0, "com.samsung.android.mediaguardian"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->setPackageOrientation(Ljava/lang/String;I)V

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$viewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->this$1:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$mgetSummaryResId(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 333
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->this$1:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->getMetricsCategory()I

    move-result p1

    const v0, 0x10a73

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-wide/16 v1, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    invoke-static {p1, v0, p0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    return-void
.end method
