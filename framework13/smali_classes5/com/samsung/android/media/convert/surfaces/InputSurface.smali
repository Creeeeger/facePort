.class public Lcom/samsung/android/media/convert/surfaces/InputSurface;
.super Ljava/lang/Object;
.source "InputSurface.java"


# static fields
.field private static final blacklist EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final blacklist EGL_RECORDABLE_ANDROID:I = 0x3142


# instance fields
.field private blacklist mEGLContext:Landroid/opengl/EGLContext;

.field private blacklist mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private blacklist mEGLSurface:Landroid/opengl/EGLSurface;

.field private blacklist mSurface:Landroid/view/Surface;


# direct methods
.method public constructor blacklist <init>(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 40
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 41
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 47
    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mSurface:Landroid/view/Surface;

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/media/convert/surfaces/InputSurface;->eglSetup()V

    .line 52
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "failed":Z
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    move v2, v1

    .local v2, "error":I
    const/16 v3, 0x3000

    if-eq v1, v3, :cond_0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": EGL error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SemVideoConverter"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    if-nez v0, :cond_1

    .line 158
    return-void

    .line 156
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "EGL error encountered (see log)"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist eglSetup()V
    .locals 13

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 58
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_4

    .line 61
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 62
    .local v1, "version":[I
    iget-object v2, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v1, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    const/16 v2, 0xb

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    .line 76
    .local v5, "attribList":[I
    new-array v2, v3, [Landroid/opengl/EGLConfig;

    .line 77
    .local v2, "configs":[Landroid/opengl/EGLConfig;
    new-array v12, v3, [I

    .line 78
    .local v12, "numConfigs":[I
    iget-object v4, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v9, v2

    const/4 v11, 0x0

    move-object v7, v2

    move-object v10, v12

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    .line 87
    .local v4, "attrib_list":[I
    iget-object v6, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v7, v2, v0

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v6, v7, v8, v4, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 89
    const-string v6, "eglCreateContext"

    invoke-direct {p0, v6}, Lcom/samsung/android/media/convert/surfaces/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 90
    iget-object v6, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz v6, :cond_1

    .line 94
    new-array v3, v3, [I

    const/16 v6, 0x3038

    aput v6, v3, v0

    .line 97
    .local v3, "surfaceAttribs":[I
    iget-object v6, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v7, v2, v0

    iget-object v8, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v6, v7, v8, v3, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 99
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/convert/surfaces/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    .line 103
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "surface was null"

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    .end local v3    # "surfaceAttribs":[I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "null context"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    .end local v4    # "attrib_list":[I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    .end local v2    # "configs":[Landroid/opengl/EGLConfig;
    .end local v5    # "attribList":[I
    .end local v12    # "numConfigs":[I
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    .end local v1    # "version":[I
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public blacklist makeCurrent()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist release()V
    .locals 4

    .line 109
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 115
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 117
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 120
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 121
    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 123
    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mSurface:Landroid/view/Surface;

    .line 124
    return-void
.end method

.method public blacklist setPresentationTime(J)V
    .locals 2
    .param p1, "nsecs"    # J

    .line 143
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 144
    return-void
.end method

.method public blacklist swapBuffers()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
