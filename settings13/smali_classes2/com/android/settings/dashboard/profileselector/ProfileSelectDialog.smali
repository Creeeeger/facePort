.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ProfileSelectDialog.java"

# interfaces
.implements Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private mSelectedTile:Lcom/android/settingslib/drawer/Tile;

.field private mSourceMetricCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ProfileSelectDialog"

    const/4 v1, 0x3

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;)Landroid/app/Dialog;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;",
            "Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 112
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    sget v1, Lcom/android/settings/R$layout;->sec_user_select_title:I

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DialogTitle;

    .line 123
    sget v3, Lcom/android/settings/R$string;->sec_select_profile:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/DialogTitle;->setText(I)V

    .line 124
    sget v3, Lcom/android/settings/R$layout;->sec_user_select:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    sget v2, Lcom/android/settings/R$id;->list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView;

    .line 129
    invoke-static {p0, p1, p2}, Lcom/android/settings/dashboard/profileselector/UserAdapter;->createUserRecycleViewAdapter(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;)Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object p2

    .line 128
    invoke-virtual {v2, p2}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 138
    :goto_0
    new-instance p1, Lcom/android/internal/widget/GridLayoutManager;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 148
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 150
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    return-object p0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;ILandroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    .line 82
    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;

    invoke-direct {v0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;-><init>()V

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "selectedTile"

    .line 84
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "sourceMetricCategory"

    .line 85
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    iput-object p3, v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 88
    iput-object p4, v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 89
    iput-object p5, v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    const-string/jumbo p1, "select_profile"

    .line 90
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static updateUserHandlesIfNeeded(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V
    .locals 3

    .line 212
    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 213
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 217
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 218
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 219
    sget-boolean v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete the user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfileSelectDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 198
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_0

    .line 199
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(I)V
    .locals 7

    .line 159
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/UserHandle;

    .line 161
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v0}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSourceMetricCategory:I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 163
    :goto_0
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntentWithProfile(Landroid/content/Intent;IZ)Z

    const v0, 0x8000

    .line 165
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p1, :cond_2

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsApplication;

    invoke-virtual {p1}, Lcom/android/settings/SettingsApplication;->getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->clearActivityStack()V

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0xffff

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/homepage/HomepageUtils;->getPopOverBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    .line 176
    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v2, v6}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 183
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 97
    const-class v0, Lcom/android/settingslib/drawer/Tile;

    const-string/jumbo v1, "selectedTile"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    const-string/jumbo v0, "sourceMetricCategory"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSourceMetricCategory:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-static {p1, v0, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->createDialog(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 206
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p0, :cond_0

    .line 207
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 188
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 190
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
