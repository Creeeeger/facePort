.class public Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppNotificationTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/app/AppNotificationTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DndAppViewHolder"
.end annotation


# instance fields
.field private deleteIcon:Landroid/widget/ImageView;

.field private dndAppTitle:Landroid/widget/TextView;

.field private dndAppView:Landroid/widget/ImageView;

.field private mDndBypassingApps_View:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetdeleteIcon(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->deleteIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdndAppTitle(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->dndAppTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdndAppView(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->dndAppView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDndBypassingApps_View(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->mDndBypassingApps_View:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;Landroid/view/View;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->this$0:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    .line 190
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 191
    sget p1, Lcom/android/settings/R$id;->dnd_view_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->mDndBypassingApps_View:Landroid/widget/RelativeLayout;

    .line 192
    sget p1, Lcom/android/settings/R$id;->dnd_app_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->dndAppView:Landroid/widget/ImageView;

    .line 193
    sget p1, Lcom/android/settings/R$id;->dnd_app_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->dndAppTitle:Landroid/widget/TextView;

    .line 194
    sget p1, Lcom/android/settings/R$id;->delete_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$DndAppViewHolder;->deleteIcon:Landroid/widget/ImageView;

    return-void
.end method
