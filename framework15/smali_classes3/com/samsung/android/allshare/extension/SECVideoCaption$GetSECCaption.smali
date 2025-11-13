.class Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;
.super Ljava/lang/Thread;
.source "SECVideoCaption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/SECVideoCaption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetSECCaption"
.end annotation


# instance fields
.field private blacklist mVideoURL:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;->mVideoURL:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECVideoCaption;->-$$Nest$sfputmSubTitleURL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    const-string v0, "1"

    const-string v1, "SECVideoCaption"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;->mVideoURL:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v3, v5

    if-eqz v3, :cond_2

    const-string v5, "GET"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "HEAD"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "User-Agent"

    const-string v6, "DMPVideoSubtitle"

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "getCaptionInfo.sec"

    invoke-virtual {v3, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "getcontentFeatures.dlna.org"

    invoke-virtual {v3, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CaptionInfo.sec"

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "GetSECCaption : IllegalArgumentException"

    invoke-static {v1, v4, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "GetSECCaption : IOException"

    invoke-static {v1, v4, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    nop

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    invoke-static {v2}, Lcom/samsung/android/allshare/extension/SECVideoCaption;->-$$Nest$sfputmSubTitleURL(Ljava/lang/String;)V

    return-void
.end method
