.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;


# instance fields
.field public final mContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$1;

.field public final mContext:Landroid/content/Context;

.field public final mDockTooltipView:Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;

.field public final mEnabledA11yServicesContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$4;

.field public final mFadeOutContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;

.field public final mIsHideHandle:Z

.field public final mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

.field public final mSizeContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$1;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$2;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mSizeContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$2;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mFadeOutContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$4;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mEnabledA11yServicesContentObserver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$4;

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-static {p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->getPosition(Landroid/content/Context;)Lcom/android/systemui/accessibility/floatingmenu/Position;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mDockTooltipView:Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;

    iput-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mIsHideHandle:Z

    return-void
.end method

.method public static getPosition(Landroid/content/Context;)Lcom/android/systemui/accessibility/floatingmenu/Position;
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "AccessibilityFloatingMenuPosition"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/systemui/accessibility/floatingmenu/Position;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f451eb8    # 0.77f

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/Position;-><init>(FF)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/systemui/accessibility/floatingmenu/Position;->sStringCommaSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/Position;-><init>(FF)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Position string: "

    invoke-static {v1, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
