.class Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$3;
.super Ljava/lang/Object;
.source "FlexModeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;

.field final synthetic val$row:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$3;->this$1:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$3;->val$row:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 395
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$3;->val$row:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcom/samsung/android/view/SemWindowManager;->setSupportsFlexPanel(ILjava/lang/String;Z)V

    .line 396
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$3;->this$1:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->getMetricsCategory()I

    move-result p1

    if-eqz p2, :cond_0

    const p2, 0x10ba0

    goto :goto_0

    :cond_0
    const p2, 0x10ba1

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$3;->val$row:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mPackage:Ljava/lang/String;

    .line 396
    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    .line 398
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$3;->val$row:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$3;->val$row:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/view/SemWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mType:I

    .line 399
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$3;->val$row:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mType:I

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mIsEnabled:Z

    return-void
.end method
