.class public Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder;
.super Landroidx/picker/features/composable/custom/CustomViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorChipCustomViewHolder"
.end annotation


# instance fields
.field private colorChipButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/custom/CustomViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a03b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder;->colorChipButton:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/AppInfoData;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->items:Ljava/util/HashMap;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder;->colorChipButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget-object v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->context:Landroid/content/Context;

    iget v2, v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;->color:I

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/FlashNotificationsUtil;->getColorDescriptionText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->context:Landroid/content/Context;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f141fdb

    invoke-virtual {v2, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->context:Landroid/content/Context;

    const v2, 0x7f080826

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->context:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;->color:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil;->getColorChipStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder;->colorChipButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder;->colorChipButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder;->colorChipButton:Landroid/widget/ImageButton;

    new-instance p1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder$1;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder$1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder;->colorChipButton:Landroid/widget/ImageButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method
