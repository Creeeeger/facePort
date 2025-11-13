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
    .param p1, "resourceURL"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;->mVideoURL:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECVideoCaption;->-$$Nest$sfputmSubTitleURL(Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 103
    const-string v0, "1"

    const-string v1, "SECVideoCaption"

    const/4 v2, 0x0

    .line 104
    .local v2, "ext":Ljava/lang/String;
    const/4 v3, 0x0

    .line 107
    .local v3, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/samsung/android/allshare/extension/SECVideoCaption$GetSECCaption;->mVideoURL:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v3, v5

    .line 109
    if-eqz v3, :cond_2

    .line 110
    const-string v5, "GET"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 111
    const-string v5, "HEAD"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    const-string v5, "User-Agent"

    const-string v6, "DMPVideoSubtitle"

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v5, "getCaptionInfo.sec"

    invoke-virtual {v3, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v5, "getcontentFeatures.dlna.org"

    invoke-virtual {v3, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "CaptionInfo.sec"

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .end local v2    # "ext":Ljava/lang/String;
    .local v0, "ext":Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v0    # "ext":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .restart local v2    # "ext":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "GetSECCaption : IllegalArgumentException"

    invoke-static {v1, v4, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 125
    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 128
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "GetSECCaption : IOException"

    invoke-static {v1, v4, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 119
    if-eqz v3, :cond_1

    .line 120
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    :cond_1
    const/4 v3, 0x0

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    nop

    .line 131
    :goto_1
    if-eqz v3, :cond_3

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    :cond_3
    invoke-static {v2}, Lcom/samsung/android/allshare/extension/SECVideoCaption;->-$$Nest$sfputmSubTitleURL(Ljava/lang/String;)V

    .line 136
    return-void
.end method
