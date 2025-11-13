.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    iget-boolean v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mNeedUpdate:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "onChange"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->refresh(Z)V

    :cond_0
    return-void
.end method
