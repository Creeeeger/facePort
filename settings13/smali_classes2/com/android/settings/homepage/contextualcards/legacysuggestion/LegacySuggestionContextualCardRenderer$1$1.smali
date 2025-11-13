.class Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1$1;
.super Ljava/lang/Object;
.source "LegacySuggestionContextualCardRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1;

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1;Landroid/view/View;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1$1;->this$0:Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1$1;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1$1;->this$0:Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1;

    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1;->val$itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    new-instance v1, Landroidx/core/view/SeslTouchTargetDelegate;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1$1;->val$parentView:Landroid/view/View;

    invoke-direct {v1, v2}, Landroidx/core/view/SeslTouchTargetDelegate;-><init>(Landroid/view/View;)V

    .line 134
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 135
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 136
    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1$1;->val$parentView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 137
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 139
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 143
    invoke-static {v3, v3, v2, v3}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v0, v2}, Landroidx/core/view/SeslTouchTargetDelegate;->addTouchDelegate(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)Landroid/view/TouchDelegate;

    .line 145
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$1$1;->val$parentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
