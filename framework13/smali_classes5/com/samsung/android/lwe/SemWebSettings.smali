.class public Lcom/samsung/android/lwe/SemWebSettings;
.super Ljava/lang/Object;
.source "SemWebSettings.java"


# static fields
.field public static final whitelist LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final whitelist LOAD_CACHE_ONLY:I = 0x3

.field public static final whitelist LOAD_DEFAULT:I = -0x1

.field public static final whitelist LOAD_NO_CACHE:I = 0x2


# instance fields
.field private blacklist mAndroidWebView:Landroid/webkit/WebView;

.field private blacklist mLWEWebView:Lcom/samsung/android/lwe/LweWebView;


# direct methods
.method public constructor blacklist <init>(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebSettings;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebSettings;->mAndroidWebView:Landroid/webkit/WebView;

    .line 79
    iput-object p1, p0, Lcom/samsung/android/lwe/SemWebSettings;->mAndroidWebView:Landroid/webkit/WebView;

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/lwe/LweWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/samsung/android/lwe/LweWebView;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebSettings;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/lwe/SemWebSettings;->mAndroidWebView:Landroid/webkit/WebView;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/lwe/SemWebSettings;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist getCacheMode()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebSettings;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->getCacheMode()I

    move-result v0

    return v0

    .line 121
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getDefaultFontSize()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebSettings;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->getDefaultFontSize()I

    move-result v0

    return v0

    .line 159
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebSettings;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Lcom/samsung/android/lwe/LweWebView;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUserAgentString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebSettings;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/samsung/android/lwe/LweWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setCacheMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 144
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebSettings;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1}, Lcom/samsung/android/lwe/LweWebView;->setCacheMode(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public whitelist setDefaultFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 168
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebSettings;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1}, Lcom/samsung/android/lwe/LweWebView;->setDefaultFontSize(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public whitelist setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/lwe/SemWebSettings;->mLWEWebView:Lcom/samsung/android/lwe/LweWebView;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Lcom/samsung/android/lwe/LweWebView;->setUserAgentString(Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method
