.class public abstract Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static updateMessageStyle(Landroidx/appcompat/app/AlertDialog;)V
    .locals 2

    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    const/4 v0, 0x1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    const-string p0, "AudioSharingDialogHelper"

    const-string v0, "Fail to update dialog: message view is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
