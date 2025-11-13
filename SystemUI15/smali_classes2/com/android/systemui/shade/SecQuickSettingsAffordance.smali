.class public final Lcom/android/systemui/shade/SecQuickSettingsAffordance;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static final BOUNCING1_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final BOUNCING2_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final BOUNCING2_ANIM_ARROW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final HIDE_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final HIDE_ANIM_ARROW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final HIDE_ANIM_GLOW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final HIDE_ANIM_GLOW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

.field public static final SHOW_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final SHOW_ANIM_ARROW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final SHOW_ANIM_GLOW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final SHOW_ANIM_GLOW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;


# instance fields
.field public arrowView:Landroid/widget/ImageView;

.field public final bouncing1AnimList:Ljava/util/ArrayList;

.field public bouncing1AnimSet:Landroid/animation/AnimatorSet;

.field public final bouncing2AnimList:Ljava/util/ArrayList;

.field public bouncing2AnimSet:Landroid/animation/AnimatorSet;

.field public bouncingCount:I

.field public final context:Landroid/content/Context;

.field public glowView:Landroid/widget/ImageView;

.field public final handler:Landroid/os/Handler;

.field public final hideAnimList:Ljava/util/ArrayList;

.field public hideAnimSet:Landroid/animation/AnimatorSet;

.field public isAnimating:Z

.field public isAttachedView:Z

.field public isBouncingAnimating:Z

.field public isHideAnimating:Z

.field public isRemoveView:Z

.field public isReversed:Z

.field public isShowAnimating:Z

.field public isVisibleView:Z

.field public lastDensityDpi:I

.field public lastLayoutDirection:I

.field public lastOrientation:I

.field public layout:Landroid/view/View;

.field public final layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final showAnimList:Ljava/util/ArrayList;

.field public showAnimSet:Landroid/animation/AnimatorSet;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecQuickSettingsAffordance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f1c28f6    # 0.61f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f6147ae    # 0.88f

    invoke-direct {v0, v1, v2, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2e147b    # 0.68f

    invoke-direct {v1, v3, v2, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sget-object v11, Lcom/android/systemui/util/AnimHelper$AnimationType;->ALPHA:Lcom/android/systemui/util/AnimHelper$AnimationType;

    sget-object v12, Lcom/android/systemui/util/AnimHelper$AnimationType;->TRANSLATION_Y:Lcom/android/systemui/util/AnimHelper$AnimationType;

    filled-new-array {v11, v12}, [Lcom/android/systemui/util/AnimHelper$AnimationType;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

    new-instance v9, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v9

    move-object v3, v11

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v9, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->SHOW_ANIM_GLOW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v2, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    move-object v4, v2

    move-object v5, v12

    move-object v10, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v2, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->SHOW_ANIM_GLOW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v9, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v4, 0x12c

    const/16 v5, 0xc8

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v9

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v9, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->SHOW_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v2, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    move-object v4, v2

    move-object v5, v12

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v2, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->SHOW_ANIM_ARROW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v9, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v2, v9

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v9, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->BOUNCING1_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v9, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v4, 0x190

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v9, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->BOUNCING2_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v2, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v6, 0x190

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    move-object v4, v2

    move-object v5, v12

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v2, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->BOUNCING2_ANIM_ARROW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v1, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v2, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->HIDE_ANIM_GLOW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v1, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40800000    # -1.0f

    move-object v2, v1

    move-object v3, v12

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->HIDE_ANIM_GLOW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v1, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v4, 0x64

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->HIDE_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v1, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v4, 0xc8

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40800000    # -1.0f

    move-object v2, v1

    move-object v3, v12

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->HIDE_ANIM_ARROW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->context:Landroid/content/Context;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->windowManager:Landroid/view/WindowManager;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing1AnimList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing2AnimList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->hideAnimList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    iput p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastDensityDpi:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastOrientation:I

    invoke-static {p1}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastLayoutDirection:I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/shade/SecQuickSettingsAffordance$settingsListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance$settingsListener$1;-><init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;)V

    iput-object p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance p2, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayLifecycleObserver$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayLifecycleObserver$1;-><init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;)V

    const-string p2, "init"

    const-string v0, "SecQuickSettingsAffordance"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "split_quick_panel_reversed"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isReversed:Z

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x538

    const/4 v11, -0x3

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e8

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/4 p2, 0x3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/shade/SecQuickSettingsAffordance;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static final access$hiding(Lcom/android/systemui/shade/SecQuickSettingsAffordance;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isVisibleView:Z

    iget-boolean v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isShowAnimating:Z

    iget-boolean v2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isBouncingAnimating:Z

    iget-boolean v3, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isInvalidOrientation()Z

    move-result v4

    const-string v5, "hiding isVisibleView = "

    const-string v6, ", isShowAnimating = "

    const-string v7, ", isBouncingAnimating = "

    invoke-static {v5, v6, v7, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAnimating = "

    const-string v5, ", isInvalidOrientation = "

    invoke-static {v0, v2, v1, v3, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, "SecQuickSettingsAffordance"

    invoke-static {v0, v4, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isInvalidOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isShowAnimating:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->startHideAnimSet()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isBouncingAnimating:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing1AnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing2AnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isVisibleView:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->startHideAnimSet()V

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public static final access$unregisterListener(Lcom/android/systemui/shade/SecQuickSettingsAffordance;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method


# virtual methods
.method public final displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "displayEffect animationState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQuickSettingsAffordance"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayEffect$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayEffect$1;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/shade/SecQuickSettingsAffordance;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getArrowTranslateY()I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070d1d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070d1c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getGlowHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070d1e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final initAnimProperties(Z)V
    .locals 8

    sget-object v0, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->glowView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->arrowView:Landroid/widget/ImageView;

    aput-object v4, v1, v2

    sget-object v2, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/util/AnimHelper;->initProperty([Lcom/android/systemui/util/AnimHelper$AnimationType;[Landroid/view/View;)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    iget-boolean v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isVisibleView:Z

    iget v2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncingCount:I

    iget-boolean v4, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isBouncingAnimating:Z

    const-string v5, "initAnimProperties VI layout visibility is GONE, isAnimating = "

    const-string v6, ", isAttachedView = "

    const-string v7, ", isVisibleView = "

    invoke-static {v5, v6, v7, p1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", bouncingCount = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isBouncingAnimating = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SecQuickSettingsAffordance"

    invoke-static {p1, v4, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    iput v3, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncingCount:I

    iput-boolean v3, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isBouncingAnimating:Z

    iget-boolean p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    if-eqz p1, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isVisibleView:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->updateLayoutVisibility()V

    :cond_0
    return-void
.end method

.method public final isInvalidOrientation()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastOrientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 6

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isRemoveView:Z

    const-string v3, "onConfigChanged isAttachedView = "

    const-string v4, ", noAnim = "

    const-string v5, ", isRemoveView = "

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQuickSettingsAffordance"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isRemoveView:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastDensityDpi:I

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastDensityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastOrientation:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->removeView()V

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastDensityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastOrientation:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastLayoutDirection:I

    :cond_3
    :goto_1
    return-void
.end method

.method public final removeView()V
    .locals 2

    const-string v0, "SecQuickSettingsAffordance"

    const-string v1, "removeView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing1AnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing2AnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->hideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->reset$4()V

    :cond_4
    return-void
.end method

.method public final reset$4()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    iget-boolean v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isRemoveView:Z

    const-string v2, "reset isAttachedView = "

    const-string v3, ", isRemoveView = "

    const-string v4, "SecQuickSettingsAffordance"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->layout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->layout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing1AnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing2AnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->hideAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->layout:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->glowView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->arrowView:Landroid/widget/ImageView;

    return-void
.end method

.method public final showing(Ljava/lang/Runnable;)V
    .locals 14

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    iget v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastOrientation:I

    iget-boolean v2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isRemoveView:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isInvalidOrientation()Z

    move-result v3

    const-string/jumbo v4, "showing isAnimating = "

    const-string v5, " -> true, lastOrientation = "

    const-string v6, ", isRemoveView = "

    invoke-static {v4, v1, v5, v0, v6}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInvalidOrientation = "

    const-string v4, "SecQuickSettingsAffordance"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isInvalidOrientation()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isRemoveView:Z

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_14

    iput-boolean v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d03bc

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->layout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->updateLayoutVisibility()V

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->layout:Landroid/view/View;

    if-eqz p1, :cond_1

    const v0, 0x7f0a0acc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->glowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v3

    :goto_1
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3e6cbfb1    # 0.2312f

    const/4 v8, 0x2

    if-eqz v4, :cond_4

    iget v9, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastOrientation:I

    if-ne v9, v8, :cond_3

    move v9, v7

    goto :goto_2

    :cond_3
    move v9, v6

    goto :goto_2

    :cond_4
    move v9, v5

    :goto_2
    mul-float/2addr v9, v0

    float-to-int v0, v9

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->getGlowHeight()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isReversed:Z

    const v9, 0x800035

    const v10, 0x800033

    if-eqz v0, :cond_5

    move v0, v10

    goto :goto_3

    :cond_5
    move v0, v9

    :goto_3
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->layout:Landroid/view/View;

    if-eqz p1, :cond_6

    const v0, 0x7f0a0acb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_4

    :cond_6
    move-object p1, v3

    :goto_4
    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->arrowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    :cond_7
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const v0, 0x3de38866    # 0.1111f

    const v11, 0x3d75c28f    # 0.06f

    const v12, 0x3d19999a    # 0.0375f

    if-eqz v4, :cond_9

    iget v13, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastOrientation:I

    if-ne v13, v8, :cond_8

    move v13, v12

    goto :goto_5

    :cond_8
    move v13, v11

    goto :goto_5

    :cond_9
    move v13, v0

    :goto_5
    mul-float/2addr v13, p1

    float-to-int p1, v13

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    if-eqz v4, :cond_b

    iget v13, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastOrientation:I

    if-ne v13, v8, :cond_a

    const v13, 0x3cb851ec    # 0.0225f

    goto :goto_6

    :cond_a
    const v13, 0x3cac0831    # 0.021f

    goto :goto_6

    :cond_b
    const v13, 0x3c9d4952    # 0.0192f

    :goto_6
    mul-float/2addr p1, v13

    float-to-int p1, p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->getGlowHeight()I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    if-eqz v4, :cond_d

    iget v5, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastOrientation:I

    if-ne v5, v8, :cond_c

    move v5, v7

    goto :goto_7

    :cond_c
    move v5, v6

    :cond_d
    :goto_7
    if-eqz v4, :cond_f

    iget v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->lastOrientation:I

    if-ne v0, v8, :cond_e

    move v0, v12

    goto :goto_8

    :cond_e
    move v0, v11

    :cond_f
    :goto_8
    sub-float/2addr v5, v0

    mul-float/2addr v5, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v5, p1

    float-to-int p1, v5

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isReversed:Z

    if-eqz v0, :cond_10

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_9

    :cond_10
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_9
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->initAnimProperties(Z)V

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    new-instance v0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->glowView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->SHOW_ANIM_GLOW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->glowView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->getGlowHeight()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->SHOW_ANIM_GLOW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v3, v2}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setToValue(F)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    new-instance v1, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    iget-object v3, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->arrowView:Landroid/widget/ImageView;

    sget-object v4, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->SHOW_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    iget-object v3, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->getArrowTranslateY()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->SHOW_ANIM_ARROW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v5, v4}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setToValue(F)V

    new-instance v4, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v4, v3, v5}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    filled-new-array {v0, v2, v1, v4}, [Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;

    const-string v3, "Show"

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/shade/SecQuickSettingsAffordance$ShowAnimatorListener;-><init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/util/AnimHelper;->makeAnimSet([Lcom/android/systemui/util/AnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing1AnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->arrowView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->BOUNCING1_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    filled-new-array {v0}, [Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing1AnimList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/AnimHelper;->makeAnimSet$default(Lcom/android/systemui/util/AnimHelper;[Lcom/android/systemui/util/AnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;ILjava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing1AnimSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing2AnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->arrowView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->BOUNCING2_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->getArrowTranslateY()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->BOUNCING2_ANIM_ARROW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v3, v2}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setToValue(F)V

    new-instance v2, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    filled-new-array {v0, v2}, [Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing2AnimList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/AnimHelper;->makeAnimSet$default(Lcom/android/systemui/util/AnimHelper;[Lcom/android/systemui/util/AnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;ILjava/lang/Object;)Landroid/animation/AnimatorSet;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing2AnimSet:Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing1AnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_11

    new-instance v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;

    const-string v8, "Bouncing1"

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;-><init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;Ljava/lang/String;Landroid/animation/AnimatorSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_11
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing2AnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_12

    new-instance v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->bouncing1AnimSet:Landroid/animation/AnimatorSet;

    const/16 v2, 0x64

    const-string v3, "Bouncing2"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/systemui/shade/SecQuickSettingsAffordance$BouncingAnimatorListener;-><init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;Ljava/lang/String;Landroid/animation/AnimatorSet;I)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_12
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->layout:Landroid/view/View;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$updateLayoutAndAnimators$$inlined$doOnPreDraw$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance$updateLayoutAndAnimators$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lcom/android/systemui/shade/SecQuickSettingsAffordance;)V

    invoke-static {p1, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_13
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->layout:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_14
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "start cancel anim duplicated anim"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->hideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_16
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->initAnimProperties(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_17
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_18
    :goto_a
    return-void
.end method

.method public final startHideAnimSet()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isHideAnimating:Z

    iget-boolean v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    const-string/jumbo v2, "startHideAnimSet isHideAnimating = "

    const-string v3, ", isAnimating = "

    const-string v4, "SecQuickSettingsAffordance"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isHideAnimating:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAnimating:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isAttachedView:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->hideAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->hideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    sget-object v0, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->glowView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    sget-object v4, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->HIDE_ANIM_GLOW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v4, v3}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setFromValue(F)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->glowView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->getGlowHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sget-object v5, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->HIDE_ANIM_GLOW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v5, v4}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setFromValue(F)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->getGlowHeight()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v6

    invoke-virtual {v5, v4}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setToValue(F)V

    new-instance v4, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v4, v1, v5}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->arrowView:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    :cond_4
    sget-object v5, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->HIDE_ANIM_ARROW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v5, v2}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setFromValue(F)V

    new-instance v2, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v2, v1, v5}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->arrowView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->getArrowTranslateY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    sget-object v7, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->HIDE_ANIM_ARROW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v7, v5}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setFromValue(F)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->getArrowTranslateY()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    invoke-virtual {v7, v5}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setToValue(F)V

    new-instance v5, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v5, v1, v7}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    filled-new-array {v3, v4, v2, v5}, [Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->hideAnimList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/shade/SecQuickSettingsAffordance$HideAnimatorListener;

    const-string v4, "Hide"

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/shade/SecQuickSettingsAffordance$HideAnimatorListener;-><init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/AnimHelper;->makeAnimSet([Lcom/android/systemui/util/AnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->hideAnimSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->hideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    :goto_4
    return-void
.end method

.method public final updateLayoutVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->layout:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isVisibleView:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
