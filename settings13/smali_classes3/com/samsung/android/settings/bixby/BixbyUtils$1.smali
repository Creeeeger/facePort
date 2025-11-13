.class Lcom/samsung/android/settings/bixby/BixbyUtils$1;
.super Ljava/lang/Object;
.source "BixbyUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bixby/BixbyUtils;->startSettingsMain(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$errorType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/BixbyUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/BixbyUtils$1;->val$errorType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/BixbyUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->temporary_unavailable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/BixbyUtils$1;->val$errorType:Ljava/lang/String;

    const-string v2, "not_supported"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/BixbyUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->do_not_support_feature:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/BixbyUtils$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
