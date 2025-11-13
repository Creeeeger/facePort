.class public final Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mTouchInProgress:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p3, v0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->-$$Nest$msetMousePointerSize(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;Landroid/content/Context;I)V

    :cond_0
    iget p3, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mLastProgress:I

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->performHapticFeedback(I)Z

    iput p2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mLastProgress:I

    :cond_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mTouchInProgress:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mTouchInProgress:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->-$$Nest$msetMousePointerSize(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;Landroid/content/Context;I)V

    return-void
.end method
