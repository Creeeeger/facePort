.class public final Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpPredictiveBack$onBackPressedCallback$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpPredictiveBack$onBackPressedCallback$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackCancelled()V
    .locals 1

    sget v0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpPredictiveBack$onBackPressedCallback$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->cancelBackProgress()V

    return-void
.end method

.method public final handleOnBackPressed()V
    .locals 1

    sget v0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpPredictiveBack$onBackPressedCallback$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->handleBackInvoked()V

    return-void
.end method

.method public final handleOnBackProgressed(Landroidx/activity/BackEventCompat;)V
    .locals 1

    sget v0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpPredictiveBack$onBackPressedCallback$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateBackProgress(Landroidx/activity/BackEventCompat;)V

    return-void
.end method

.method public final handleOnBackStarted(Landroidx/activity/BackEventCompat;)V
    .locals 1

    sget v0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpPredictiveBack$onBackPressedCallback$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startBackProgress(Landroidx/activity/BackEventCompat;)V

    return-void
.end method
