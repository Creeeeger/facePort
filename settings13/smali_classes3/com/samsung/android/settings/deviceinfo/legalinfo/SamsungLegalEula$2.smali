.class Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$2;
.super Ljava/lang/Object;
.source "SamsungLegalEula.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->createThreadAndDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fgetmIsShowAAOnly(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_AA_GET:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fputmLegalText(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$misCscEulaSupport(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$mgetSamsungLegalFromCSC(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fputmLegalText(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_EULA_GET:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fputmLegalText(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;Ljava/lang/String;)V

    .line 129
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;->-$$Nest$fgetmhandlerLoading(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungLegalEula;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
