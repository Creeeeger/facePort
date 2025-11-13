.class public final Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mNotiMain:Landroid/widget/LinearLayout;

.field public final mNotiType:Landroid/widget/TextView;

.field public final mcheckbox:Landroid/widget/CheckBox;

.field public final noti_type_image:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0a9a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0a9d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mNotiMain:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0a9f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->noti_type_image:Landroid/widget/ImageView;

    const v0, 0x7f0a0a9e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mNotiType:Landroid/widget/TextView;

    const v0, 0x7f0a0c2c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/app/AppNotificationTypeAdapter$ViewHolder;->mcheckbox:Landroid/widget/CheckBox;

    return-void
.end method
