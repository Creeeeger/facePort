.class public final Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mColorChecker:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-lez v1, :cond_1

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_STARTING_WINDOW_enabled:[Z

    const/4 v1, 0x1

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, -0x1fe513bbf052c28aL    # -9.024431338808333E154

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;

    sget p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mThemeBackgroundColor:I

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;-><init>(Landroid/graphics/drawable/ColorDrawable;)V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->mColorChecker:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;

    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_3

    new-instance p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;-><init>(Landroid/graphics/drawable/ColorDrawable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->mColorChecker:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;

    :goto_1
    return-void
.end method
