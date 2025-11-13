.class public Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppNotificationTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/app/AppNotificationTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZenCallViewHolder"
.end annotation


# instance fields
.field private contactView:Landroid/widget/RelativeLayout;

.field private deleteItemImage:Landroid/widget/ImageView;

.field private dndTypeImage:Landroid/widget/ImageView;

.field private dndTypeTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontactView(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->contactView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeleteItemImage(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->deleteItemImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdndTypeImage(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->dndTypeImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdndTypeTitle(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->dndTypeTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;Landroid/view/View;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->this$0:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    .line 204
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 205
    sget p1, Lcom/android/settings/R$id;->dnd_view_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->contactView:Landroid/widget/RelativeLayout;

    .line 206
    sget p1, Lcom/android/settings/R$id;->dnd_contact_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->dndTypeImage:Landroid/widget/ImageView;

    .line 207
    sget p1, Lcom/android/settings/R$id;->dnd_contact_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->dndTypeTitle:Landroid/widget/TextView;

    .line 208
    sget p1, Lcom/android/settings/R$id;->delete_item_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenCallViewHolder;->deleteItemImage:Landroid/widget/ImageView;

    return-void
.end method
