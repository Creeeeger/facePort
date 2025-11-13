.class public Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCalculateTouchDuration:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;

.field public mDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mHandler:Landroid/os/Handler;

.field public mHorizontalPadding:I

.field public mMenu:Landroid/view/Menu;

.field public mMenuInflater:Landroid/view/MenuInflater;

.field public mPortraitSaveButton:Landroid/view/MenuItem;

.field public mStartPressTime:J

.field public mTimeTextView:Landroid/widget/TextView;

.field public mTotalPressedTime:J

.field public mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

.field public mTouchContainer:Landroid/view/View;

.field public final mTouchViewDelegate:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$3;

.field public final onBackPressedCallback:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$2;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mStartPressTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mCalculateTouchDuration:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$1;

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->onBackPressedCallback:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$2;

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchViewDelegate:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$3;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1396

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final init(Landroid/view/View;)V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    const v0, 0x7f0a0fd5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0604f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mHorizontalPadding:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f0a107e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchViewDelegate:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$3;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTouchAndHoldView:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const v0, 0x7f0a0901

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    long-to-float p0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%.2f"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final initEditMenu()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a058e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    iget-object v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mMenuInflater:Landroid/view/MenuInflater;

    const v3, 0x7f0f002a

    invoke-virtual {v2, v3, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;)V

    iput-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    const v0, 0x7f0a024f

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mPortraitSaveButton:Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const v4, 0x7f0a024e

    if-ne v3, v2, :cond_2

    invoke-interface {v0, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    :cond_3
    :goto_0
    iget-wide v3, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    const-wide/16 v5, 0xc8

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->setSaveButtonEnable(Z)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->onBackPressedCallback:Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$2;

    invoke-virtual {p1, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    const v1, 0x7f0d0247

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->init(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->initEditMenu()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f141651

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;)V

    const v2, 0x7f142f54

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;)V

    const v2, 0x7f142f47

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;)V

    const v2, 0x7f142f4c

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mMenuInflater:Landroid/view/MenuInflater;

    const v0, 0x7f0f002a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->initEditMenu()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0247

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mHorizontalPadding:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->init(Landroid/view/View;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a024d

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_1
    const v1, 0x7f0a024f

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mTotalPressedTime:J

    long-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saved : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchAndHoldCustomFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const v0, 0x7f0a024e

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    :cond_0
    return-void
.end method

.method public final setSaveButtonEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    const v1, 0x7f0a024f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldCustomFragment;->mPortraitSaveButton:Landroid/view/MenuItem;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method
