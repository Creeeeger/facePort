.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;

    iget-object v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p1, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "accessibility_floating_menu_fade_enabled"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_floating_menu_opacity"

    const v1, 0x3f0ccccd    # 0.55f

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateOpacityWith(FZ)V

    return-void
.end method
