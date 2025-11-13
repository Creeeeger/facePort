.class public final Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpInsets$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpInsets$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpInsets$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    sget v0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->$r8$clinit:I

    invoke-virtual {p2}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpInsets$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    iget-object p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpInsets$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    const v0, 0x7f0a0b4c

    invoke-virtual {p2, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    iget v0, p1, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpInsets$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState$1(I)V

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method
