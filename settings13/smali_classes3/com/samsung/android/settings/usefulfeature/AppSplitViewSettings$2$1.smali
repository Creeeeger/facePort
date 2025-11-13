.class Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;
.super Ljava/lang/Object;
.source "AppSplitViewSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;

.field final synthetic val$row:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->this$1:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 295
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->this$1:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmSupportEmbedActivityPackages(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->this$1:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmSupportEmbedActivityPackages(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V

    .line 297
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mState:I

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V

    .line 300
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mState:I

    .line 302
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->this$1:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->getMetricsCategory()I

    move-result p1

    if-eqz p2, :cond_1

    const p2, 0x10b3b

    goto :goto_1

    :cond_1
    const p2, 0x10b3c

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;->val$row:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    return-void
.end method
