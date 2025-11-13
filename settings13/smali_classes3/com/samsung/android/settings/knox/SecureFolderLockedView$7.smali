.class Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;
.super Ljava/lang/Object;
.source "SecureFolderLockedView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/SecureFolderLockedView;->showUninstallDialog()V
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

    .line 474
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 478
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmKnoxEventList(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Ljava/util/ArrayList;

    move-result-object p0

    const/16 p2, 0xb7

    const/16 v0, 0x728

    invoke-static {p2, v0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(II)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
