.class public Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;
.super Ljava/lang/Object;
.source "SPenRendererAdapter.java"

# interfaces
.implements Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Framework SPenRendererAdapter"

.field private static final blacklist VERSION:Ljava/lang/String; = "1.0.2"


# instance fields
.field private blacklist mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

.field private blacklist mNativeHwuiFunctor:J

.field private blacklist mWebViewFunctor:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 20
    const-string v0, "HWRenderer.penlibrary.samsung"

    invoke-static {v0}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->loadLibrary(Ljava/lang/String;)Z

    .line 21
    return-void
.end method

.method public constructor greylist <init>(Lcom/samsung/android/spensdk/framework/SpenDrawCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mNativeHwuiFunctor:J

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mWebViewFunctor:I

    .line 30
    iput-object p1, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    .line 31
    invoke-static {p0}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->Native_CreateNativeFunctor(Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mNativeHwuiFunctor:J

    .line 32
    invoke-static {p0}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->Native_CreateWebViewFunctor(Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mWebViewFunctor:I

    .line 33
    return-void
.end method

.method private static native blacklist Native_CreateNativeFunctor(Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;)J
.end method

.method private static native blacklist Native_CreateWebViewFunctor(Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;)I
.end method

.method private static native blacklist Native_DestroyNativeFunctor(J)V
.end method

.method private static native blacklist Native_DestroyWebViewFunctor(I)V
.end method

.method private static native blacklist Native_invokeFunctor(JZ)V
.end method

.method public static greylist getVersion()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "1.0.2"

    return-object v0
.end method

.method public static greylist isSupported()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist loadLibrary(Ljava/lang/String;)Z
    .locals 2
    .param p0, "libraryName"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/4 v0, 0x1

    return v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "ex":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 63
    return v0

    .line 58
    .end local v1    # "ex":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v1

    .line 59
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 60
    return v0
.end method

.method private blacklist onDraw(Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onDraw(Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;)Landroid/graphics/RectF;

    .line 130
    :cond_0
    return-void
.end method

.method private blacklist onProcessWithNoContext()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onProcessWithoutScreenUpdate()V

    .line 142
    :cond_0
    return-void
.end method

.method private blacklist onProcessWithoutScreenUpdate()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onProcessWithoutScreenUpdate()V

    .line 136
    :cond_0
    return-void
.end method

.method private blacklist onSync()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onSync()V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist callOnDraw(Landroid/graphics/Canvas;)Z
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 100
    instance-of v0, p1, Landroid/graphics/RecordingCanvas;

    const-string v1, "Framework SPenRendererAdapter"

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    iget v2, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mWebViewFunctor:I

    invoke-virtual {v0, v2}, Landroid/graphics/RecordingCanvas;->drawWebViewFunctor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "on drawWebViewFunctor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 108
    :cond_0
    const-string v0, "Canvas can not be cast to RecordingCanvas"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public greylist callOnProcess(Z)Z
    .locals 2
    .param p1, "wait"    # Z

    .line 122
    iget-wide v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mNativeHwuiFunctor:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->Native_invokeFunctor(JZ)V

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public greylist close()V
    .locals 4

    .line 41
    iget-wide v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mNativeHwuiFunctor:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 42
    invoke-static {v0, v1}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->Native_DestroyNativeFunctor(J)V

    .line 45
    :cond_0
    iget v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mWebViewFunctor:I

    invoke-static {v0}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->Native_DestroyWebViewFunctor(I)V

    .line 46
    return-void
.end method
