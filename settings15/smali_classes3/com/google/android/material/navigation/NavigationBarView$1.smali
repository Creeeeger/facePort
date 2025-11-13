.class public final Lcom/google/android/material/navigation/NavigationBarView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    return-void
.end method


# virtual methods
.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 5

    sget p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->$r8$clinit:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->reselectedListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    iget v2, v2, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    if-ne p1, v2, :cond_5

    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->reselectedListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f0a0cef

    if-ne p1, p2, :cond_4

    iget p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->getCheckedCount$1()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->getRemovableEntriesCount()I

    move-result v2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f1434d6    # 1.9700008E38f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f120069

    invoke-virtual {v2, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v2, p2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iput-boolean v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V

    const v0, 0x7f140c1d

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1408bf

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V

    iput-object p1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->setMode$2(I)V

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->setMode$2(I)V

    :cond_4
    :goto_1
    return v1

    :cond_5
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    if-eqz p0, :cond_6

    invoke-interface {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-nez p0, :cond_6

    move v0, v1

    :cond_6
    return v0
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
