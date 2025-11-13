.class Lcom/samsung/android/settings/usefulfeature/LabsSettings$1;
.super Ljava/lang/Object;
.source "LabsSettings.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/LabsSettings;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;


# direct methods
.method public static synthetic $r8$lambda$6W1cKtMPXZaCquiIoOCbof3DKBU(Lcom/samsung/android/settings/usefulfeature/LabsSettings$1;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/usefulfeature/LabsSettings$1;->lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$mlaunchLabSetting(Lcom/samsung/android/settings/usefulfeature/LabsSettings;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 2

    .line 255
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Ljava/util/List;

    move-result-object p2

    monitor-enter p2

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/usefulfeature/LabsSettings;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 257
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 259
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/LabsSettings$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3, v0}, Lcom/samsung/android/settings/usefulfeature/LabsSettings$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/LabsSettings$1;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
