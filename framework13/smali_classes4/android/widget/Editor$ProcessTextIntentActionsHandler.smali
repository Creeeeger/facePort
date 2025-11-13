.class final Landroid/widget/Editor$ProcessTextIntentActionsHandler;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessTextIntentActionsHandler"
.end annotation


# instance fields
.field private final greylist-max-o mAccessibilityActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mAccessibilityIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mEditor:Landroid/widget/Editor;

.field private final greylist-max-o mPackageManager:Landroid/content/pm/PackageManager;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mSupportedActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 9629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9624
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    .line 9625
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    .line 9627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    .line 9630
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mEditor:Landroid/widget/Editor;

    .line 9631
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    .line 9632
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mContext:Landroid/content/Context;

    .line 9633
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager;

    iput-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 9634
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageName:Ljava/lang/String;

    .line 9635
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor$ProcessTextIntentActionsHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private greylist-max-o createProcessTextIntent()Landroid/content/Intent;
    .locals 2

    .line 9764
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9765
    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 9766
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 9764
    return-object v0
.end method

.method private greylist-max-o createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 9758
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    .line 9759
    invoke-virtual {v1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 9760
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 9758
    return-object v0
.end method

.method private greylist-max-o fireIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 9716
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9717
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 9718
    .local v0, "selectedText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 9719
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9720
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/widget/Editor;->-$$Nest$fputmPreserveSelection(Landroid/widget/Editor;Z)V

    .line 9721
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    const/16 v3, 0x64

    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9722
    return v2

    .line 9724
    .end local v0    # "selectedText":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 9772
    const-string v0, "Editor"

    :try_start_0
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 9773
    .local v1, "appRes":Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 9774
    .local v2, "configuration":Landroid/content/res/Configuration;
    iget-object v3, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 9775
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v3, :cond_0

    .line 9776
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9775
    .end local v1    # "appRes":Landroid/content/res/Resources;
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    :cond_0
    goto :goto_0

    .line 9780
    :catch_0
    move-exception v1

    .line 9781
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "resource not found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9778
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 9779
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "package name not found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9782
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    nop

    .line 9784
    :goto_1
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOrder(Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 9789
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isThemeDeviceDefault()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 9790
    return v1

    .line 9793
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9795
    .local v0, "resolveInfoString":Ljava/lang/String;
    const-string v2, "com.sec.android.app.translator"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 9796
    const-string v2, "com.google.android.apps.translate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 9800
    :cond_1
    const-string v2, "com.diotek.sec.lookup.dictionary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9801
    const-string v2, "com.sec.android.app.dictionary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 9805
    :cond_2
    return v1

    .line 9802
    :cond_3
    :goto_0
    const/16 v1, 0xc

    return v1

    .line 9797
    :cond_4
    :goto_1
    const/16 v1, 0xd

    return v1
.end method

.method private greylist-max-o isSupportedActivity(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 9750
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 9753
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 9750
    :goto_1
    return v0
.end method

.method private blacklist loadIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 9809
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9810
    .local v0, "resolveInfoString":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 9811
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 9814
    .local v2, "menuIcon":Landroid/graphics/drawable/Drawable;
    const-string v3, "com.sec.android.app.translator"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 9815
    const-string v3, "com.google.android.apps.translate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 9820
    :cond_0
    const-string v3, "com.diotek.sec.lookup.dictionary"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9821
    const-string v3, "com.sec.android.app.dictionary"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 9824
    :cond_1
    if-eqz v2, :cond_4

    .line 9825
    iget-object v3, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080bad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 9827
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 9828
    .local v3, "iconSize":I
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 9822
    .end local v3    # "iconSize":I
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080ba7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 9816
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080baf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 9831
    :cond_4
    :goto_2
    return-object v2
.end method

.method private greylist-max-o loadSupportedActivities()V
    .locals 6

    .line 9728
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9729
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9730
    return-void

    .line 9732
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 9733
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 9734
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 9735
    .local v1, "unfiltered":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 9736
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v3}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->isSupportedActivity(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9738
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.diotek.sec.lookup.dictionary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9739
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.sec.android.app.dictionary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    .line 9740
    invoke-virtual {v4}, Landroid/widget/TextView;->canDictionary()Z

    move-result v4

    if-nez v4, :cond_2

    .line 9741
    goto :goto_0

    .line 9744
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9746
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    goto :goto_0

    .line 9747
    :cond_4
    return-void
.end method


# virtual methods
.method public greylist-max-o initializeAccessibilityActions()V
    .locals 7

    .line 9680
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9681
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9682
    const/4 v0, 0x0

    .line 9683
    .local v0, "i":I
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->loadSupportedActivities()V

    .line 9684
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 9685
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const v3, 0x10000100

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    add-int/2addr v0, v3

    .line 9686
    .local v0, "actionId":I
    iget-object v3, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 9688
    invoke-direct {p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 9686
    invoke-virtual {v3, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9689
    iget-object v3, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    .line 9690
    invoke-direct {p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v5

    .line 9689
    invoke-virtual {v3, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9691
    .end local v0    # "actionId":I
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    move v0, v4

    goto :goto_0

    .line 9692
    .end local v4    # "i":I
    .local v0, "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9700
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9701
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 9700
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9703
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o onInitializeMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 9641
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->loadSupportedActivities()V

    .line 9642
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 9643
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9644
    iget-object v2, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 9653
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getOrder(Landroid/content/pm/ResolveInfo;)I

    move-result v3

    .line 9654
    .local v3, "order":I
    if-gez v3, :cond_0

    .line 9655
    add-int/lit8 v3, v1, 0x64

    .line 9658
    :cond_0
    invoke-direct {p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, v5, v5, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 9659
    invoke-direct {p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->loadIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 9660
    invoke-direct {p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v4

    .line 9661
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 9643
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "order":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9664
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public greylist-max-o performAccessibilityAction(I)Z
    .locals 1
    .param p1, "actionId"    # I

    .line 9712
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->fireIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o performMenuItemAction(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 9673
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->fireIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
