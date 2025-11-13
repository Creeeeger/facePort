.class public final synthetic Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;

    return-void
.end method


# virtual methods
.method public final onTabSelected(I)V
    .locals 7

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionStatusFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;

    const-string v3, "l2"

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2InfoFragment;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL2InfoFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2InfoFragment;

    const-string v4, "l3"

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL3InfoFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionStatusFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->detach(Landroidx/fragment/app/Fragment;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL2InfoFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2InfoFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->detach(Landroidx/fragment/app/Fragment;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL3InfoFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->detach(Landroidx/fragment/app/Fragment;)V

    :cond_2
    const-string v0, "newInstance"

    const v5, 0x7f0a0fb7

    const/4 v6, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v6, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL3InfoFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    const-string p1, "ConnectionL3InfoFragment"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;-><init>()V

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3InfoFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1, v5, p1, v4, v6}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p1}, Landroidx/fragment/app/BackStackRecord;->attach(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionL2InfoFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2InfoFragment;

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    const-string p1, "ConnectionL2InfoFragment"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2InfoFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2InfoFragment;-><init>()V

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2InfoFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1, v5, p1, v3, v6}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v1, p1}, Landroidx/fragment/app/BackStackRecord;->attach(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionStatusFragment:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    const-string p1, "ConnectionStatusFragment"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;-><init>()V

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionStatusFragment;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1, v5, p1, v2, v6}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    invoke-virtual {v1, p1}, Landroidx/fragment/app/BackStackRecord;->attach(Landroidx/fragment/app/Fragment;)V

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void
.end method
