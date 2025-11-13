.class public final synthetic Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;

    iput p2, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;

    iget p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget v0, p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    iget-object v1, p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->this$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    const/4 v2, -0x1

    if-ne v0, p0, :cond_0

    iput v2, p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    sget p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->$r8$clinit:I

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->saveButtonSetEnabled(Z)V

    goto :goto_0

    :cond_0
    iput p0, p1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AvatarAdapter;->mSelectedPosition:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-eq v0, v2, :cond_1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->$r8$clinit:I

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->saveButtonSetEnabled(Z)V

    :goto_0
    return-void
.end method
