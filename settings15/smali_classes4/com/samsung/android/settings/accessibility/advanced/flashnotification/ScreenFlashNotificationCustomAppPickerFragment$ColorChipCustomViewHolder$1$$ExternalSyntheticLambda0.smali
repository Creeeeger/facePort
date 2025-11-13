.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$ColorChipCustomViewHolder$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;->color:I

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->-$$Nest$smsetScreenFlashColorWithAliases(Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;)Z

    sget-object p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->appPickerListView:Landroidx/picker/widget/SeslAppPickerListView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
