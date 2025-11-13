.class Lcom/samsung/android/settings/knox/SecureFolderLockedView$5;
.super Ljava/lang/Object;
.source "SecureFolderLockedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/SecureFolderLockedView;->updateLockedView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$5;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 425
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$5;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmKnoxEventList(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Ljava/util/ArrayList;

    move-result-object p1

    const/16 v0, 0xb7

    const/16 v1, 0x727

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(II)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$5;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->showUninstallDialog()V

    return-void
.end method
