.class public Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mControllerUpdateCallback:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$$ExternalSyntheticLambda0;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mKeyboardLayoutPreview:Landroid/widget/ImageView;

.field public mKeyboardLayoutPreviewText:Landroid/widget/TextView;

.field public final mKeyboardLayoutSelectedCallback:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$1;

.field public mKeyboardLayoutView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$1;-><init>(Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutSelectedCallback:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$1;

    new-instance v0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mControllerUpdateCallback:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final initUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const v0, 0x7f0d0448

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutView:Landroid/view/View;

    const p2, 0x7f0a083d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060738

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutView:Landroid/view/View;

    const p2, 0x7f0a083c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutPreview:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutView:Landroid/view/View;

    const p2, 0x7f0a083e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutPreviewText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {p2, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerTitle;

    invoke-direct {p1}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerTitle;-><init>()V

    const v0, 0x7f0a083f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    new-instance p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;

    invoke-direct {p1}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;-><init>()V

    iget-object p2, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mControllerUpdateCallback:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$$ExternalSyntheticLambda0;

    iput-object p2, p1, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerContent;->mControllerUpdateCallback:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p2}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p2, 0x7f0a0840

    invoke-virtual {v0, p2, p1, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    iget-object p0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutView:Landroid/view/View;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a091b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->initUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Landroid/hardware/input/InputManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/InputManager;

    iput-object p2, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->initUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
