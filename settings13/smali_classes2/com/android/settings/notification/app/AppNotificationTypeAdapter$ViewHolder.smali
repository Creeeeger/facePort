.class public Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppNotificationTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/app/AppNotificationTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mNotiAllowed:Landroid/widget/TextView;

.field private mNotiCard:Landroid/widget/LinearLayout;

.field private mNotiMain:Landroid/widget/LinearLayout;

.field private mNotiType:Landroid/widget/TextView;

.field private noti_type_image:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNotiAllowed(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mNotiAllowed:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotiCard(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mNotiCard:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotiType(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mNotiType:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnoti_type_image(Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->noti_type_image:Landroid/widget/ImageView;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;Landroid/view/View;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->this$0:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    .line 174
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 175
    sget p1, Lcom/android/settings/R$id;->noti_card_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mNotiCard:Landroid/widget/LinearLayout;

    .line 176
    sget p1, Lcom/android/settings/R$id;->noti_main:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mNotiMain:Landroid/widget/LinearLayout;

    .line 177
    sget p1, Lcom/android/settings/R$id;->noti_type_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->noti_type_image:Landroid/widget/ImageView;

    .line 178
    sget p1, Lcom/android/settings/R$id;->noti_type:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mNotiType:Landroid/widget/TextView;

    .line 179
    sget p1, Lcom/android/settings/R$id;->noti_allowed:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mNotiAllowed:Landroid/widget/TextView;

    return-void
.end method
