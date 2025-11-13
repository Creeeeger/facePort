.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final egl:Ljavax/microedition/khronos/egl/EGL10;

.field public final eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field public final eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public final eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field public final gl:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EGLHandler"

    const-string v1, "Initialize egl context"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    const/4 v8, 0x3

    new-array v1, v8, [I

    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    iput-object v7, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v1, 0x1

    new-array v9, v1, [I

    const/16 v10, 0x3038

    const/16 v1, 0xd

    new-array v11, v1, [I

    fill-array-data v11, :array_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, v7

    move-object v3, v11

    move-object v6, v9

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v5, v9, v1

    new-array v12, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v11

    move-object v4, v12

    move-object v6, v9

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-static {v12}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v7, v1, p1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/16 v3, 0x3098

    filled-new-array {v3, v8, v10}, [I

    move-result-object v3

    invoke-interface {v0, v7, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v7, p1, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p0

    check-cast p0, Ljavax/microedition/khronos/opengles/GL10;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Couldn\'t create egl config"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x10
        0x3040
        0x4
        0x3038
    .end array-data
.end method


# virtual methods
.method public final makeCurrent()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
