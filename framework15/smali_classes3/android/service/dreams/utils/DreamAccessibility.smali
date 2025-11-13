.class public Landroid/service/dreams/utils/DreamAccessibility;
.super Ljava/lang/Object;
.source "DreamAccessibility.java"


# instance fields
.field private final blacklist mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/utils/DreamAccessibility;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/service/dreams/utils/DreamAccessibility;->mView:Landroid/view/View;

    iget-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/service/dreams/utils/DreamAccessibility;->createNewAccessibilityDelegate(Landroid/content/Context;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method private blacklist addAccessibilityConfiguration()V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/service/dreams/utils/DreamAccessibility;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private blacklist createNewAccessibilityDelegate(Landroid/content/Context;)Landroid/view/View$AccessibilityDelegate;
    .locals 1

    new-instance v0, Landroid/service/dreams/utils/DreamAccessibility$1;

    invoke-direct {v0, p0, p1}, Landroid/service/dreams/utils/DreamAccessibility$1;-><init>(Landroid/service/dreams/utils/DreamAccessibility;Landroid/content/Context;)V

    return-object v0
.end method

.method private blacklist removeCustomAccessibilityAction()V
    .locals 2

    iget-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/utils/DreamAccessibility;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist updateAccessibilityConfiguration(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/service/dreams/utils/DreamAccessibility;->addAccessibilityConfiguration()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/utils/DreamAccessibility;->removeCustomAccessibilityAction()V

    :goto_0
    return-void
.end method
