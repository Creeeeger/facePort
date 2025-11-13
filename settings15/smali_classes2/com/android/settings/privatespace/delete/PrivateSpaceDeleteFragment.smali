.class public Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContentView:Landroid/view/View;

.field public mPrivateUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7f8

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const p1, 0x7f0a0067

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getPrivateProfileHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment;->mPrivateUserHandle:Landroid/os/UserHandle;

    if-nez v1, :cond_0

    const-string v1, "PrivateSpaceDeleteFrag"

    const-string v2, "Private space user handle cannot be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_0
    const v1, 0x7f0d0557

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0bba

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/GlifLayout;

    const-class v3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f141d3e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v0}, Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance v6, Lcom/google/android/setupcompat/template/FooterButton;

    const v7, 0x7f15045d

    invoke-direct {v6, v4, v5, v2, v7}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {v1, v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3}, Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v6, 0x2

    const v7, 0x7f15045e

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    iget-object v1, v0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment;->mContentView:Landroid/view/View;

    const v3, 0x7f0a005e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment;->mContentView:Landroid/view/View;

    const v4, 0x7f0a005c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-class v6, Landroid/view/LayoutInflater;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    new-instance v7, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v8, v0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment;->mPrivateUserHandle:Landroid/os/UserHandle;

    const/4 v9, 0x0

    invoke-direct {v7, v4, v8, v9}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iget-object v8, v7, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    array-length v9, v8

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    iget-object v12, v0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment;->mPrivateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5, v11, v12}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v7, v13, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-nez v11, :cond_1

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    :cond_1
    array-length v13, v12

    move v14, v2

    :goto_1
    if-ge v14, v13, :cond_2

    aget-object v15, v12, v14

    move-object/from16 p1, v4

    const v4, 0x7f0d0468

    invoke-virtual {v6, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v2, 0x1020006

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x1020016

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v15, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p1

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 p1, v4

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, v0, Lcom/android/settings/privatespace/delete/PrivateSpaceDeleteFragment;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->isPrivateSpaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
