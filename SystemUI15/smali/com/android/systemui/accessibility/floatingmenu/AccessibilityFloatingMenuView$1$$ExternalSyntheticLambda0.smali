.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;

    check-cast p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    iget-object p1, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageX:F

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageY:F

    iget-object v2, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    const/16 v4, 0x189

    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v3, v0}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v3, v1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v3, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    iget-object p1, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    const-string v0, "AccessibilityFloatingMenuPosition"

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/Position;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
