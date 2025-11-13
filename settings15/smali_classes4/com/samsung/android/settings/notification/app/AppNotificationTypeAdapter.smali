.class public final Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppNotificationTypeInfoList:Ljava/util/ArrayList;

.field public mBackend:Lcom/android/settings/notification/NotificationBackend;

.field public mListener:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ClickListener;

.field public mZenModeAllBypassingAddAppsListener:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeAllBypassingAddAppsListener;

.field public mZenModeCallExceptionListener:Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->isAddAppException:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    const-string p1, ""

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->isAddAppException:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackage:Ljava/lang/String;

    const-string v4, ""

    if-ne v0, v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/16 v4, 0x8

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_2

    goto/16 :goto_5

    :cond_2
    check-cast p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;

    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->deleteIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_4

    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->dndAppView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->mPackageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->dndAppView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget v1, v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->imageEntry:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->dndAppTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->mDndBypassingApps_View:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->deleteIcon:Landroid/widget/ImageView;

    new-instance v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :cond_5
    check-cast p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;

    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mNotiMain:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->noti_type_image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget v1, v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->imageEntry:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mNotiType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mcheckbox:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->selected:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    :cond_6
    check-cast p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;

    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->deleteItemImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->contactView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;-><init>(Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->contactPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->dndTypeImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->contactPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_8
    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->dndTypeImage:Landroid/widget/ImageView;

    const v1, 0x7f080549

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_9
    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->dndTypeImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget v1, v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->imageEntry:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    iget-object v0, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->dndTypeTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;->mAppNotificationTypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->deleteItemImage:Landroid/widget/ImageView;

    new-instance v0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$1;-><init>(Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter;II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const p0, 0x7f0a0550

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    new-instance p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;

    const p2, 0x7f0d021e

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_0
    const p2, 0x7f1702a8

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    iput-object p0, p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->mDndBypassingApps_View:Landroid/widget/RelativeLayout;

    const p0, 0x7f0a054c

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->dndAppView:Landroid/widget/ImageView;

    const p0, 0x7f0a054b

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->dndAppTitle:Landroid/widget/TextView;

    const p0, 0x7f0a04ca

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->deleteIcon:Landroid/widget/ImageView;

    return-object p2

    :cond_1
    const p0, 0x7f0d07fc

    invoke-static {p1, p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_2
    const p2, 0x7f1702ae

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    iput-object p0, p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->contactView:Landroid/widget/RelativeLayout;

    const p0, 0x7f0a054d

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->dndTypeImage:Landroid/widget/ImageView;

    const p0, 0x7f0a054e

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->dndTypeTitle:Landroid/widget/TextView;

    const p0, 0x7f0a04cb

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, p2, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->deleteItemImage:Landroid/widget/ImageView;

    return-object p2
.end method
