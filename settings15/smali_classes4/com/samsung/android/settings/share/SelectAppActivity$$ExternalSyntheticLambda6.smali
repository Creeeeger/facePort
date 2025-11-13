.class public final synthetic Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/share/SelectAppActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSelectLayout:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslAppPickerSelectLayout;->setStateAll(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateSelectAllCheckBox()V

    return-void
.end method
