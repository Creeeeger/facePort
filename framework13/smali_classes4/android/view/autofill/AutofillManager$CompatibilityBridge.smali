.class final Landroid/view/autofill/AutofillManager$CompatibilityBridge;
.super Ljava/lang/Object;
.source "AutofillManager.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatibilityBridge"
.end annotation


# instance fields
.field greylist-max-o mCompatServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private final greylist-max-o mFocusedBounds:Landroid/graphics/Rect;

.field private greylist-max-o mFocusedNodeId:J

.field private greylist-max-o mFocusedWindowId:I

.field private final greylist-max-o mTempBounds:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Landroid/view/autofill/AutofillManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFocusedBounds(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusedNodeId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)J
    .locals 2

    iget-wide v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusedWindowId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)I
    .locals 0

    iget p0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    return p0
.end method

.method constructor blacklist <init>(Landroid/view/autofill/AutofillManager;)V
    .locals 2

    .line 3276
    iput-object p1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3261
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    .line 3263
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mTempBounds:Landroid/graphics/Rect;

    .line 3266
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    .line 3268
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 3277
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    .line 3278
    .local p1, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->setAccessibilityPolicy(Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;)V

    .line 3279
    return-void
.end method

.method private greylist-max-o findViewByAccessibilityId(IJ)Landroid/view/View;
    .locals 3
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 3478
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3479
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_0

    .line 3480
    const/4 v1, 0x0

    return-object v1

    .line 3482
    :cond_0
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    .line 3483
    .local v1, "viewId":I
    invoke-interface {v0, v1, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAccessibilityIdTraversal(II)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I

    .line 3487
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 3488
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_0

    .line 3489
    const/4 v1, 0x0

    return-object v1

    .line 3491
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getCompatServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    .line 3282
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3283
    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mCompatServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v1, :cond_0

    .line 3284
    monitor-exit v0

    return-object v1

    .line 3286
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3287
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "android"

    const-string v4, "com.android.server.autofill.AutofillCompatAccessibilityService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3289
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x100080

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3292
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_1
    new-instance v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mCompatServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3296
    nop

    .line 3297
    :try_start_2
    monitor-exit v0

    return-object v3

    .line 3293
    :catch_0
    move-exception v3

    .line 3294
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find compat autofill service:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot find compat autofill service"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/autofill/AutofillManager$CompatibilityBridge;
    throw v4

    .line 3298
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/view/autofill/AutofillManager$CompatibilityBridge;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private greylist-max-o isVirtualNode(I)Z
    .locals 1
    .param p1, "nodeId"    # I

    .line 3495
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o notifyValueChanged(IJ)V
    .locals 5
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 3438
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 3439
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3440
    return-void

    .line 3442
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 3443
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 3444
    return-void

    .line 3446
    :cond_1
    invoke-direct {p0, v1, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 3447
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_2

    .line 3448
    return-void

    .line 3450
    :cond_2
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    .line 3451
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 3450
    invoke-virtual {v3, v1, v0, v4}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    .line 3452
    return-void
.end method

.method private greylist-max-o notifyViewClicked(IJ)V
    .locals 4
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 3455
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 3456
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3457
    return-void

    .line 3459
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 3460
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 3461
    return-void

    .line 3463
    :cond_1
    invoke-direct {p0, v1, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 3464
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_2

    .line 3465
    return-void

    .line 3467
    :cond_2
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v3, v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/View;I)V

    .line 3468
    return-void
.end method

.method private greylist-max-o notifyViewEntered(IJLandroid/graphics/Rect;)Z
    .locals 6
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J
    .param p4, "focusedBounds"    # Landroid/graphics/Rect;

    .line 3400
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 3401
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3402
    return v2

    .line 3404
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 3405
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 3406
    return v2

    .line 3408
    :cond_1
    invoke-direct {p0, v1, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 3409
    .local v3, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v3, :cond_2

    .line 3410
    return v2

    .line 3412
    :cond_2
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3413
    return v2

    .line 3415
    :cond_3
    iget-object v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mTempBounds:Landroid/graphics/Rect;

    .line 3416
    .local v4, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3417
    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3418
    return v2

    .line 3420
    :cond_4
    invoke-virtual {p4, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3421
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v2, v1, v0, v4}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    .line 3422
    const/4 v2, 0x1

    return v2
.end method

.method private greylist-max-o notifyViewExited(IJ)V
    .locals 3
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 3426
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 3427
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3428
    return-void

    .line 3430
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 3431
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 3432
    return-void

    .line 3434
    :cond_1
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v2, v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    .line 3435
    return-void
.end method

.method private greylist-max-o updateTrackedViewsLocked()V
    .locals 1

    .line 3472
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmTrackedViews(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$TrackedViews;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3473
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmTrackedViews(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$TrackedViews;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillChangedLocked()V

    .line 3475
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o getEnabledAccessibilityServiceList(ILjava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3327
    .local p2, "enabledService":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez p2, :cond_0

    .line 3328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 3330
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->getCompatServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3331
    return-object p2
.end method

.method public greylist-max-o getInstalledAccessibilityServiceList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3317
    .local p1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez p1, :cond_0

    .line 3318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    .line 3320
    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->getCompatServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3321
    return-object p1
.end method

.method public greylist-max-o getRelevantEventTypes(I)I
    .locals 1
    .param p1, "relevantEventTypes"    # I

    .line 3308
    or-int/lit8 v0, p1, 0x8

    or-int/lit8 v0, v0, 0x10

    or-int/lit8 v0, v0, 0x1

    or-int/lit16 v0, v0, 0x800

    return v0
.end method

.method public greylist-max-o isEnabled(Z)Z
    .locals 1
    .param p1, "accessibilityEnabled"    # Z

    .line 3303
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;ZI)Landroid/view/accessibility/AccessibilityEvent;
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "accessibilityEnabled"    # Z
    .param p3, "relevantEventTypes"    # I

    .line 3337
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 3338
    .local v0, "type":I
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 3340
    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAccessibilityEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): virtualId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3342
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    .line 3343
    invoke-static {v3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3340
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    :cond_0
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 3384
    :sswitch_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 3385
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v1, :cond_6

    .line 3386
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3387
    :try_start_0
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsFillUiShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3388
    iget v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    iget-wide v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    iget-object v6, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewEntered(IJLandroid/graphics/Rect;)Z

    .line 3390
    :cond_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->updateTrackedViewsLocked()V

    .line 3391
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3369
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :sswitch_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3370
    :try_start_1
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 3371
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 3372
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyValueChanged(IJ)V

    .line 3374
    :cond_2
    monitor-exit v1

    .line 3375
    goto :goto_0

    .line 3374
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 3347
    :sswitch_2
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3348
    :try_start_2
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 3349
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 3350
    monitor-exit v1

    return-object p1

    .line 3352
    :cond_3
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-wide v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4

    .line 3354
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    iget-wide v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    invoke-direct {p0, v2, v4, v5}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewExited(IJ)V

    .line 3355
    iput v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    .line 3356
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 3357
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3359
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    .line 3360
    .local v2, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    .line 3361
    .local v3, "nodeId":J
    iget-object v5, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewEntered(IJLandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3362
    iput v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    .line 3363
    iput-wide v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 3365
    .end local v2    # "windowId":I
    .end local v3    # "nodeId":J
    :cond_5
    monitor-exit v1

    .line 3366
    goto :goto_0

    .line 3365
    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 3378
    :sswitch_3
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3379
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewClicked(IJ)V

    .line 3380
    monitor-exit v1

    .line 3381
    goto :goto_0

    .line 3380
    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 3396
    :cond_6
    :goto_0
    if-eqz p2, :cond_7

    move-object v1, p1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x800 -> :sswitch_0
    .end sparse-switch
.end method
