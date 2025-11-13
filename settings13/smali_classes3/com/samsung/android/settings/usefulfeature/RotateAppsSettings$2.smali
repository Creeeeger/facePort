.class Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;
.super Ljava/lang/Object;
.source "RotateAppsSettings.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;


# direct methods
.method public static synthetic $r8$lambda$mdeL6ShaFTJX-kBBjFmqz0ItySI(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;ILjava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->lambda$onBindViewHolder$0(ILjava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILjava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 300
    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {p3, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fputmRefreshPosition(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;I)V

    .line 301
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "packageName"

    .line 302
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p3, Lcom/samsung/android/settings/usefulfeature/RotateAppDetailSettings;

    .line 304
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    sget p3, Lcom/android/settings/R$string;->sec_rotate_all_apps_title:I

    .line 305
    invoke-virtual {p2, p3}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    .line 306
    invoke-virtual {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "RotateAppsSettings"

    if-nez v0, :cond_0

    .line 292
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "skipped unexpected package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$CustomViewHolder;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    .line 299
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, p3}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p3

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p3, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 312
    new-instance v3, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2$1;-><init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V

    invoke-virtual {p3, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 336
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmRefreshPosition(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 337
    iget-object p2, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPackageOrientation(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mState:I

    .line 338
    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPolicyFromLegacyFlag(I)I

    move-result p2

    iput p2, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    .line 339
    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getOrientationSwitchState(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mSwitchState:Z

    .line 340
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    const/4 v3, -0x1

    invoke-static {p2, v3}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fputmRefreshPosition(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;I)V

    .line 342
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "policy : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / switch : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mSwitchState:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " refresh position"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_2
    iget-boolean p2, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mSwitchState:Z

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 345
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p2

    iget-boolean p3, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mSwitchState:Z

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    iget v0, v0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    invoke-static {p3, v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$mgetSummaryResId(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 347
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_1
    return-void
.end method
