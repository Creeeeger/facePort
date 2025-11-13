.class public Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sProcessTextManageAppsStr:Ljava/lang/String; = ""

.field public static sResolveInfo:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isDebuggableBinary()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d055f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "process_text_manager_apps"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->sProcessTextManageAppsStr:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->isDebuggableBinary()Z

    move-result p1

    const-string v0, "ProcessTextManageApps"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "load manage apps list : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->sProcessTextManageAppsStr:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->sProcessTextManageAppsStr:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    sput-object p1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->sProcessTextManageAppsStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->saveProcessTextManageAppsList()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "resolveInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->sResolveInfo:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "*"

    sput-object p1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->sResolveInfo:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->isDebuggableBinary()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sResolveInfo received : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->sResolveInfo:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const p1, 0x7f0a0928

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const v2, 0x7f0a0bc5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$1;-><init>(Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v4, 0x44160000    # 600.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    const/16 v2, 0x1e0

    goto :goto_0

    :cond_4
    const/16 v2, 0x258

    :goto_0
    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getStatusBarHeight : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07067e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState$1(I)V

    new-instance p1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$2;-><init>(Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;)V

    const-string v0, "BottomSheetBehavior"

    const-string v2, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$MainPreferenceFragment;

    invoke-direct {p1}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f0a0b7d

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->isDebuggableBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProcessTextManageApps"

    const-string v1, "bottom sheet destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->saveProcessTextManageAppsList()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->isDebuggableBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessTextManageApps"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final saveProcessTextManageAppsList()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->isDebuggableBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "save manage apps list : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->sProcessTextManageAppsStr:Ljava/lang/String;

    const-string v2, "ProcessTextManageApps"

    invoke-static {v0, v1, v2}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
