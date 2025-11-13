.class public abstract Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static newBuilder(Landroidx/fragment/app/FragmentActivity;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;
    .locals 3

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d020a

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mCustomTitle:Landroid/view/View;

    const v1, 0x7f0d0209

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFactory$DialogBuilder;->mCustomBody:Landroid/view/View;

    return-object v0
.end method
