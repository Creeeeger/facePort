.class public interface abstract Lcom/samsung/android/lwe/LweWebView;
.super Ljava/lang/Object;
.source "LweWebView.java"


# virtual methods
.method public abstract blacklist addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract blacklist canGoBack()Z
.end method

.method public abstract blacklist canGoForward()Z
.end method

.method public abstract blacklist clearCache(Z)V
.end method

.method public abstract blacklist clearHistory()V
.end method

.method public abstract blacklist evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist getCacheMode()I
.end method

.method public abstract blacklist getDefaultFontSize()I
.end method

.method public abstract blacklist getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract blacklist getInputConnectionInstance(Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
.end method

.method public abstract blacklist getSettings()Lcom/samsung/android/lwe/SemWebSettings;
.end method

.method public abstract blacklist getUrl()Ljava/lang/String;
.end method

.method public abstract blacklist getUserAgentString()Ljava/lang/String;
.end method

.method public abstract blacklist goBack()V
.end method

.method public abstract blacklist goForward()V
.end method

.method public abstract blacklist initWebView(Landroid/view/View;)V
.end method

.method public abstract blacklist loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist loadUrl(Ljava/lang/String;)V
.end method

.method public abstract blacklist onVisibilityChanged(Landroid/view/View;I)V
.end method

.method public abstract blacklist reload()V
.end method

.method public abstract blacklist removeJavascriptInterface(Ljava/lang/String;)V
.end method

.method public abstract blacklist setCacheMode(I)V
.end method

.method public abstract blacklist setDefaultFontSize(I)V
.end method

.method public abstract blacklist setDownloadListener(Lcom/samsung/android/lwe/SemDownloadListener;)V
.end method

.method public abstract blacklist setUserAgentString(Ljava/lang/String;)V
.end method

.method public abstract blacklist setWebLweClient(Lcom/samsung/android/lwe/SemWebLweClient;)V
.end method

.method public abstract blacklist setWebViewClient(Lcom/samsung/android/lwe/SemWebViewClient;)V
.end method

.method public abstract blacklist stopLoading()V
.end method
