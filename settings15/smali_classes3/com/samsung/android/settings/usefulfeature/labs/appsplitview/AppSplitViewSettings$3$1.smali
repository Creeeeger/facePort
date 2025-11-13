.class public final Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;

.field public final synthetic val$row:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->this$1:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->val$row:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->this$1:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;->mSupportEmbedActivityPackages:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->val$row:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->val$row:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->val$row:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->val$row:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mState:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->val$row:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->val$row:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->val$row:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mState:I

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->this$1:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    const p1, 0x10b3b

    goto :goto_1

    :cond_1
    const p1, 0x10b3c

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$3$1;->val$row:Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/appsplitview/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    const p2, 0x10b3a

    invoke-static {p2, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    return-void
.end method
