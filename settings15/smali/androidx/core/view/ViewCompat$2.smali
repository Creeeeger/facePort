.class public final Landroidx/core/view/ViewCompat$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mContentChangeType:I

.field public final mFrameworkMinimumSdk:I

.field public final mTagKey:I

.field public final mType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(ILjava/lang/Class;III)V
    .locals 0

    iput p5, p0, Landroidx/core/view/ViewCompat$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/view/ViewCompat$2;->mTagKey:I

    iput-object p2, p0, Landroidx/core/view/ViewCompat$2;->mType:Ljava/lang/Class;

    iput p3, p0, Landroidx/core/view/ViewCompat$2;->mContentChangeType:I

    iput p4, p0, Landroidx/core/view/ViewCompat$2;->mFrameworkMinimumSdk:I

    return-void
.end method


# virtual methods
.method public final set(Landroid/view/View;Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Landroidx/core/view/ViewCompat$2;->mTagKey:I

    iget v2, p0, Landroidx/core/view/ViewCompat$2;->mFrameworkMinimumSdk:I

    const/4 v3, 0x1

    iget v4, p0, Landroidx/core/view/ViewCompat$2;->$r8$classId:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_0

    packed-switch v4, :pswitch_data_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api28Impl;->setAccessibilityHeading(Landroid/view/View;Z)V

    goto/16 :goto_6

    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api30Impl;->setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api28Impl;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_1

    packed-switch v4, :pswitch_data_1

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api28Impl;->isAccessibilityHeading(Landroid/view/View;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api30Impl;->getStateDescription(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api28Impl;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Landroidx/core/view/ViewCompat$2;->mType:Ljava/lang/Class;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    packed-switch v4, :pswitch_data_2

    check-cast v2, Ljava/lang/Boolean;

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    if-ne v2, v4, :cond_5

    move v5, v3

    :cond_5
    xor-int/lit8 v2, v5, 0x1

    goto :goto_4

    :pswitch_4
    check-cast v2, Ljava/lang/CharSequence;

    move-object v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_3
    xor-int/2addr v2, v3

    goto :goto_4

    :pswitch_5
    check-cast v2, Ljava/lang/CharSequence;

    move-object v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_3

    :goto_4
    if-eqz v2, :cond_9

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    instance-of v0, v2, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    if-eqz v0, :cond_7

    check-cast v2, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    iget-object v0, v2, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    goto :goto_5

    :cond_7
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v0, v2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    :goto_5
    if-nez v0, :cond_8

    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    :cond_8
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget p0, p0, Landroidx/core/view/ViewCompat$2;->mContentChangeType:I

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    :cond_9
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
