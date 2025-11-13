.class public final Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mImageView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;->this$0:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a07a5

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconHolder;->mImageView:Landroid/widget/ImageView;

    return-void
.end method
