.class Lcom/android/settings/core/CategoryMixin$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CategoryMixin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/CategoryMixin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/core/CategoryMixin;


# direct methods
.method private constructor <init>(Lcom/android/settings/core/CategoryMixin;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/settings/core/CategoryMixin$PackageReceiver;->this$0:Lcom/android/settings/core/CategoryMixin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/core/CategoryMixin;Lcom/android/settings/core/CategoryMixin$PackageReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/core/CategoryMixin$PackageReceiver;-><init>(Lcom/android/settings/core/CategoryMixin;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 245
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PkgUtil.inValidatePackageCache : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CategoryMixin"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {p1}, Lcom/samsung/android/settings/PkgUtils;->invalidatePackageCache(Ljava/lang/String;)V

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin$PackageReceiver;->this$0:Lcom/android/settings/core/CategoryMixin;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/core/CategoryMixin;->-$$Nest$mupdateCategories(Lcom/android/settings/core/CategoryMixin;Z)V

    return-void
.end method
