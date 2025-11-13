.class Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController$2;
.super Ljava/lang/Object;
.source "CtcEcloudPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController$2;->this$0:Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string p2, "android.intent.action.VIEW"

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "samsungapps://ProductDetail/com.cn21.ecloud"

    .line 66
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 67
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    const/high16 v0, 0x10000000

    .line 68
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 69
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    iget-object v3, p0, Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController$2;->this$0:Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;->access$000(Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    invoke-static {}, Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMarket resolveActivity is not null, start market service, uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController$2;->this$0:Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;->access$100(Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 75
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null resolveActivity.try again via google play"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "market://details?id=com.cn21.ecloud"

    .line 76
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 77
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :try_start_2
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    iget-object p0, p0, Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController$2;->this$0:Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;->access$200(Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 84
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkToMarket got an error, uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/samsung/android/settings/account/controller/CtcEcloudPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not link to market, Exception e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_1
    return-void
.end method
