.class public Lcom/android/settings/localepicker/LocaleListEditor;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;
.implements Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field private mAddLanguage:Landroid/view/View;

.field private mAddLanguageLayout:Landroid/widget/LinearLayout;

.field private mApplyButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field private mApplyButtonLayout:Landroid/widget/LinearLayout;

.field private mConnectionStatus:Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;

.field private mEditMode:Z

.field private mIsUiRestricted:Z

.field private mMenu:Landroid/view/Menu;

.field private mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

.field private mRemoveAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mRemoveMode:Z

.field private mSettingsBaseActivity:Lcom/android/settings/core/SettingsBaseActivity;

.field private mShowingRemoveDialog:Z

.field private removeButtonLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAddLanguageLayout(Lcom/android/settings/localepicker/LocaleListEditor;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguageLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoveAlertDialog(Lcom/android/settings/localepicker/LocaleListEditor;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShowingRemoveDialog(Lcom/android/settings/localepicker/LocaleListEditor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEditMode(Lcom/android/settings/localepicker/LocaleListEditor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->setEditMode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVisibilityOfRemoveMenu(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 705
    new-instance v0, Lcom/android/settings/localepicker/LocaleListEditor$16;

    invoke-direct {v0}, Lcom/android/settings/localepicker/LocaleListEditor$16;-><init>()V

    sput-object v0, Lcom/android/settings/localepicker/LocaleListEditor;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_locale"

    .line 109
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    .line 102
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 118
    new-instance v0, Lcom/android/settings/localepicker/LocaleListEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleListEditor$1;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mConnectionStatus:Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;

    return-void
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 5

    .line 560
    sget v0, Lcom/android/settings/R$id;->locale_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 561
    new-instance v1, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    const/4 v2, 0x1

    .line 562
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    .line 563
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 565
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 566
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 567
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x3

    .line 570
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 572
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 571
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 574
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateRecyclerViewDivider(I)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguageLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguageLayout:Landroid/widget/LinearLayout;

    .line 578
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 577
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 581
    sget v0, Lcom/android/settings/R$id;->add_language:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    .line 582
    new-instance v0, Lcom/android/settings/localepicker/LocaleListEditor$14;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleListEditor$14;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getUserLocaleList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    .line 552
    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 553
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 554
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private handleOnBackPressed(Z)Z
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isSelectMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 676
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1, v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    .line 677
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->initializeSelectBoxState()V

    goto :goto_0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 680
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1, v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    .line 681
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->initializeSelectBoxState()V

    .line 682
    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->setEditMode(Z)V

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->onCheckedChange()V

    return v2

    .line 686
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    if-nez p1, :cond_2

    .line 688
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_2
    :goto_0
    return v1
.end method

.method private setEditMode(Z)V
    .locals 1

    .line 345
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mEditMode:Z

    if-eqz p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method private setRemoveMode(Z)V
    .locals 1

    .line 337
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    .line 338
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setRemoveMode(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method private showNotificationDialog(Landroid/content/Context;)V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    .line 648
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/settings/R$string;->status_bar_latest_events_title:I

    .line 649
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->language_settings_noti_desc:I

    .line 650
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$15;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$15;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 651
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 656
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    .line 657
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 5

    .line 598
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 603
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 606
    sget v2, Lcom/android/settings/R$string;->common_edit:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 607
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isEditMode()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result p0

    if-le p0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    .line 608
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 610
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method


# virtual methods
.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 696
    const-class p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x158

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_general"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/localepicker/LocaleListEditor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleListEditor$2;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "localeInfo"

    .line 328
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 330
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 331
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 333
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackKey()V
    .locals 1

    const/4 v0, 0x0

    .line 671
    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->handleOnBackPressed(Z)Z

    return-void
.end method

.method public onCheckedChange()V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->removeButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 665
    :cond_0
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->removeButtonLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 633
    sget v0, Lcom/android/settings/R$id;->apply_button:I

    if-ne p1, v0, :cond_0

    .line 634
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 635
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1f57

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    .line 637
    :cond_0
    sget v0, Lcom/android/settings/R$id;->button_bar:I

    if-ne p1, v0, :cond_1

    .line 638
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->removeChecked()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getUserLocaleList()Ljava/util/List;

    move-result-object p1

    .line 138
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    .line 142
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->showNotificationDialog(Landroid/content/Context;)V

    .line 147
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/core/SettingsBaseActivity;

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mSettingsBaseActivity:Lcom/android/settings/core/SettingsBaseActivity;

    .line 148
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->initializeSelectBoxState()V

    .line 152
    invoke-static {}, Lcom/android/settings/localepicker/OverlayManagerConnection;->getInstance()Lcom/android/settings/localepicker/OverlayManagerConnection;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mConnectionStatus:Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/localepicker/OverlayManagerConnection;->bindService(Landroid/content/Context;Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 529
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 530
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    .line 531
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p2, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setMenuItem(Landroid/view/Menu;)V

    .line 532
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    sget p2, Lcom/android/settings/R$string;->common_edit:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 533
    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 534
    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result p2

    if-nez p2, :cond_0

    .line 535
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 537
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 169
    sget p3, Lcom/android/settings/R$layout;->sec_locale_order_list:I

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 172
    sget p3, Lcom/android/settings/R$id;->apply_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object p3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mApplyButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    .line 173
    sget p3, Lcom/android/settings/R$id;->apply_btn_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mApplyButtonLayout:Landroid/widget/LinearLayout;

    .line 174
    sget p3, Lcom/android/settings/R$id;->add_language_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguageLayout:Landroid/widget/LinearLayout;

    .line 175
    iget-object p3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mApplyButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object p3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mApplyButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setApplyBtnLayout(Landroid/widget/LinearLayout;)V

    .line 177
    iget-object p3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setAddLanguageBtnLayout(Landroid/view/View;)V

    .line 178
    iget-object p3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p3, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setOnCheckedChangeListener(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->setBottomNaviButtonForRemove()V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Lcom/android/settings/localepicker/OverlayManagerConnection;->getInstance()Lcom/android/settings/localepicker/OverlayManagerConnection;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/localepicker/OverlayManagerConnection;->unbindService(Landroid/content/Context;)V

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 320
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 317
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/localepicker/LocaleListEditor;->handleOnBackPressed(Z)Z

    move-result p0

    return p0

    .line 300
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz p1, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1f4b

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 305
    invoke-direct {p0, v2}, Lcom/android/settings/localepicker/LocaleListEditor;->setEditMode(Z)V

    :goto_0
    return v2
.end method

.method public onPause()V
    .locals 1

    .line 626
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 627
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 231
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 233
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->locale_empty_view:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 241
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 243
    sget v0, Lcom/android/settings/R$string;->language_empty_list_user_restricted:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 244
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 248
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 253
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyBackPressedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyBackPressedListener;)V

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    sget v0, Lcom/android/settings/R$string;->phone_language:I

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 287
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isEditMode()Z

    move-result v0

    const-string v1, "localeEditMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    const-string/jumbo v1, "showingLocaleRemoveDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 264
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "localeEditMode"

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mEditMode:Z

    const-string/jumbo v0, "showingLocaleRemoveDialog"

    .line 270
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->restoreState(Landroid/os/Bundle;)V

    .line 275
    iget-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->onCheckedChange()V

    :goto_0
    return-void
.end method

.method public setBottomNaviButtonForRemove()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mSettingsBaseActivity:Lcom/android/settings/core/SettingsBaseActivity;

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->removeButtonLayout:Landroid/widget/RelativeLayout;

    .line 206
    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$3;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$3;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mSettingsBaseActivity:Lcom/android/settings/core/SettingsBaseActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 215
    sget v1, Lcom/android/settings/R$layout;->sec_bottom_naviagtion_delete_layout:I

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->removeButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 218
    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$4;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$4;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 225
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->removeButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method showRemoveLocaleWarningDialog()V
    .locals 7

    .line 359
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isEditMode()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setEditMode(Z)V

    return-void

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 372
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 373
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->dlg_remove_locales_error_title:I

    .line 374
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_remove_locales_error_message:I

    .line 375
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$6;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$6;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 376
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$5;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$5;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 381
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 391
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 392
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    .line 399
    :cond_1
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLanguageChecked()Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->remove_language_title_single:I

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v5}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLanguageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->remove_language_message:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v6}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLangugeNameAfterDelete()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    if-le v0, v1, :cond_5

    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$plurals;->remove_language_title_multiple_plurals:I

    new-array v5, v1, [Ljava/lang/Object;

    .line 405
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 404
    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->remove_language_message:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v6}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLangugeNameAfterDelete()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->remove_language_title_single:I

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v5}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDeleteLanguageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->remove_language_message_continue:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v6}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLanguageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-le v0, v1, :cond_5

    .line 413
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$plurals;->remove_language_title_multiple_plurals:I

    new-array v5, v1, [Ljava/lang/Object;

    .line 414
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 413
    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->remove_language_message_continue:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v6}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLanguageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v3

    .line 418
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 420
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 422
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$9;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$9;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 423
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->common_remove:I

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$8;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$8;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 428
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$7;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$7;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    .line 446
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 456
    new-instance v1, Lcom/android/settings/localepicker/LocaleListEditor$10;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocaleListEditor$10;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 473
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
