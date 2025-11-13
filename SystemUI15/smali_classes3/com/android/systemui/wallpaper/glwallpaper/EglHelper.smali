.class public final Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mEglConfig:Landroid/opengl/EGLConfig;

.field public mEglContext:Landroid/opengl/EGLContext;

.field public mEglDisplay:Landroid/opengl/EGLDisplay;

.field public mEglSurface:Landroid/opengl/EGLSurface;

.field public final mEglVersion:[I

.field public final mExts:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglVersion:[I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mExts:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->connectDisplay()Z

    return-void
.end method


# virtual methods
.method public final connectDisplay()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mExts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglDisplay()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "eglGetDisplay failed: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EglHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/16 v1, 0x3055

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mExts:Ljava/util/Set;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hasEglDisplay()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz p0, :cond_0

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
