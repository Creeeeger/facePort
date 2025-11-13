.class public Lcom/samsung/android/lwe/SemWebViewClient;
.super Ljava/lang/Object;
.source "SemWebViewClient.java"


# static fields
.field public static final ERROR_AUTHENTICATION:I = -0x4

.field public static final ERROR_BAD_URL:I = -0xc

.field public static final ERROR_CONNECT:I = -0x6

.field public static final ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final ERROR_FILE:I = -0xd

.field public static final ERROR_FILE_NOT_FOUND:I = -0xe

.field public static final ERROR_HOST_LOOKUP:I = -0x2

.field public static final ERROR_IO:I = -0x7

.field public static final ERROR_PROXY_AUTHENTICATION:I = -0x5

.field public static final ERROR_REDIRECT_LOOP:I = -0x9

.field public static final ERROR_TIMEOUT:I = -0x8

.field public static final ERROR_TOO_MANY_REQUESTS:I = -0xf

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final ERROR_UNSUPPORTED_SCHEME:I = -0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method


# virtual methods
.method public onLoadResource(Lcom/samsung/android/lwe/SemWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/lwe/SemWebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 150
    return-void
.end method

.method public onPageFinished(Lcom/samsung/android/lwe/SemWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/lwe/SemWebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 173
    return-void
.end method

.method public onPageStarted(Lcom/samsung/android/lwe/SemWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/lwe/SemWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 184
    return-void
.end method

.method public onReceivedError(Lcom/samsung/android/lwe/SemWebView;Lcom/samsung/android/lwe/SemWebResourceRequest;Lcom/samsung/android/lwe/SemWebResourceError;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/lwe/SemWebView;
    .param p2, "request"    # Lcom/samsung/android/lwe/SemWebResourceRequest;
    .param p3, "error"    # Lcom/samsung/android/lwe/SemWebResourceError;

    .line 162
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/samsung/android/lwe/SemWebView;Lcom/samsung/android/lwe/SemWebResourceRequest;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/lwe/SemWebView;
    .param p2, "request"    # Lcom/samsung/android/lwe/SemWebResourceRequest;

    .line 200
    const/4 v0, 0x0

    return v0
.end method
