.class Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;
.super Landroid/database/ContentObserver;
.source "SecureFolderConfirmLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;Landroid/os/Handler;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "hide_secure_folder_flag"

    .line 578
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 580
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p1, p3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 582
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 583
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$2;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
