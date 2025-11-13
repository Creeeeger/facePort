.class Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;
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

    .line 343
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 346
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmIsInMultiWindowMode(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 347
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmKnoxEventList(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Ljava/util/ArrayList;

    move-result-object p1

    const/16 v1, 0xb5

    const/16 v2, 0x713

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const/4 p1, 0x2

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$mcallSamsungAccountConfirmationPage(Lcom/samsung/android/settings/knox/SecureFolderLockedView;ZI)V

    return-void
.end method
