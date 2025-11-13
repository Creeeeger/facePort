.class public final synthetic Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const-string v2, "ImageWallpaperVideoRenderer"

    const-string v3, "EglHelper"

    const/16 v4, 0x3038

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v0, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    packed-switch v6, :pswitch_data_0

    iget-object v0, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v6, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz v6, :cond_14

    iget-object v7, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-nez v7, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->draw()V

    iget-object v6, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    iget-object v7, v6, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, v6, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v7, v6}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v6

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v7

    const/16 v8, 0x3000

    if-eq v7, v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "eglSwapBuffers failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v6, :cond_13

    const-string v6, "Surface is invalid. Reset EGL helper."

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "reset"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz v6, :cond_12

    iget-object v6, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    if-nez v6, :cond_3

    goto/16 :goto_7

    :cond_3
    iget-object v2, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    iget-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v6, v8, :cond_4

    move v6, v7

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "destroyEglSurface : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v6, :cond_5

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v6, v8, :cond_5

    iget-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v9, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v6, v8, v8, v9}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    iget-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v8, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v6, v8}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    :cond_5
    iget-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    if-eqz v6, :cond_6

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v6, v8, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "destroyEglContext : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    if-eqz v6, :cond_6

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v6, v8, :cond_6

    iget-object v8, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v8, v6}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    :cond_6
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v6}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    :cond_7
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v6

    const/4 v8, 0x0

    if-nez v6, :cond_9

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->connectDisplay()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    const-string v1, "Can not connect display, abort!"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_9
    :goto_1
    iget-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v9, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglVersion:[I

    invoke-static {v6, v9, v5, v9, v7}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v6

    if-eqz v6, :cond_11

    new-array v6, v7, [I

    new-array v15, v7, [Landroid/opengl/EGLConfig;

    const/16 v9, 0x11

    new-array v10, v9, [I

    fill-array-data v10, :array_0

    iget-object v9, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    move-object v12, v15

    move-object/from16 v17, v15

    move-object v15, v6

    invoke-static/range {v9 .. v16}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v9

    if-nez v9, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "eglChooseConfig failed: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v9

    invoke-static {v9}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v6, v8

    goto :goto_3

    :cond_a
    aget v9, v6, v5

    if-gtz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "eglChooseConfig failed, invalid configs count: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, v6, v5

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    aget-object v6, v17, v5

    :goto_3
    iput-object v6, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglConfig:Landroid/opengl/EGLConfig;

    if-eqz v6, :cond_10

    const-string v6, "createEglContext start"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x5

    new-array v6, v6, [I

    const/16 v9, 0x3098

    aput v9, v6, v5

    const/4 v9, 0x2

    aput v9, v6, v7

    iget-object v7, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mExts:Ljava/util/Set;

    check-cast v7, Ljava/util/HashSet;

    const-string v10, "EGL_IMG_context_priority"

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x3100

    aput v7, v6, v9

    const/16 v7, 0x3103

    const/4 v9, 0x3

    aput v7, v6, v9

    goto :goto_4

    :cond_c
    move v1, v9

    :goto_4
    aput v4, v6, v1

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v4, v7, v6, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_e

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v1, v4, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createEglContext done : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "createEglSurface start"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v0

    if-eqz v0, :cond_d

    throw v8

    :cond_d
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglDisplay()Z

    throw v8

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglCreateContext failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    const-string v1, "mEglDisplay is null"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const-string v1, "Can\'t create EGLContext!"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_10
    const-string v1, "eglConfig not initialized!"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglInitialize failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->createVideoLayer()V

    throw v8

    :cond_12
    :goto_7
    const-string v1, "Cannot reset. Layer is null."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iput v5, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mInvalidateCount:I

    :cond_14
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3027
        0x3038
        0x3038
    .end array-data
.end method
