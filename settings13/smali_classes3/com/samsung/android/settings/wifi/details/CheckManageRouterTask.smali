.class public Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;
.super Landroid/os/AsyncTask;
.source "CheckManageRouterTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;

.field private mResponse:I

.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "Go to Webpage: reach to finally"

    const-string v1, "CheckManageRouterTask"

    .line 51
    iget v2, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    if-eqz v2, :cond_0

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    .line 58
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 59
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Go To Webpage: HTTP Response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "Go to Webpage: Error opening connection"

    .line 66
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz p0, :cond_2

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "Go to Webpage: Error getting URL"

    .line 63
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz p0, :cond_2

    :goto_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 69
    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 71
    :cond_3
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->mCallback:Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->mCallback:Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;->onReceiveResponse(I)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "CheckManageRouterTask"

    const-string p1, "Go to Webpage: HTTP response is null"

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->mCallback:Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;

    .line 40
    iget p0, p0, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    if-eqz p0, :cond_0

    .line 41
    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;->onReceiveResponse(I)V

    :cond_0
    return-void
.end method
