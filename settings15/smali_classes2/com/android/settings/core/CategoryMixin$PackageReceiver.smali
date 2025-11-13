.class public final Lcom/android/settings/core/CategoryMixin$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/core/CategoryMixin;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/CategoryMixin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/core/CategoryMixin$PackageReceiver;->this$0:Lcom/android/settings/core/CategoryMixin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "PkgUtil.inValidatePackageCache : "

    const-string v0, "CategoryMixin"

    invoke-static {p2, p1, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/settings/PkgUtils;->mHasPackageMap:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "inValidatePackageCache + "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PkgUtil"

    invoke-static {v0, p2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/settings/PkgUtils;->mHasPackageMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/samsung/android/settings/PkgUtils;->mPackageEnabledMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin$PackageReceiver;->this$0:Lcom/android/settings/core/CategoryMixin;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/CategoryMixin;->updateCategories(Z)V

    return-void
.end method
