.class public final Lcom/android/settings/dashboard/profileselector/UserAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mUserDetails:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter;->mUserDetails:Ljava/util/ArrayList;

    const-class p2, Landroid/view/LayoutInflater;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/dashboard/profileselector/UserAdapter;
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-static {v1, p0}, Lcom/android/settings/Utils;->shouldHideUser(Landroid/os/UserHandle;Landroid/os/UserManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;

    invoke-direct {v2, v1, p0, p1}, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;-><init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/android/settings/dashboard/profileselector/UserAdapter;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/profileselector/UserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object p0
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter;->mUserDetails:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter;->mUserDetails:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter;->mUserDetails:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0bfc

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter;->mUserDetails:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;

    iget-object p1, p3, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p3, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p3, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;->mButtonView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method
