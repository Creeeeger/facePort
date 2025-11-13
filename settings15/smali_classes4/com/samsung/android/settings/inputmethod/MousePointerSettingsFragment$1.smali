.class public final Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    sget-object v2, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v1}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    iget-object v3, v2, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mColorEntityViews:[Landroid/view/View;

    aget-object v1, v3, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->handleClickOnColorItem(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    iget-object v4, v2, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->pointerColorList:[I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    :goto_0
    iget-object v6, v2, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->mColorEntityViews:[Landroid/view/View;

    array-length v7, v6

    if-ge v3, v7, :cond_1

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    aget v2, v4, v3

    const-string/jumbo v3, "mouse_pointer_color"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->handleClickOnColorItem(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->getContentDescriptionAtIndex(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
