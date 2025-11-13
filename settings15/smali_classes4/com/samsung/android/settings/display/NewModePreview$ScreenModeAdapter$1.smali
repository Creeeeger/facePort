.class public final Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    int-to-long v2, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    iget-object v7, v6, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mNameStringId:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    iget-object v6, v6, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mDBValue:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v5, p1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAccessibilityVisionMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f1426cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f140681

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    move v6, v4

    :goto_2
    iget-object v7, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    iget-object v7, v7, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mNameStringId:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    if-ne v6, v3, :cond_3

    iget-object v7, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    iput-boolean p1, v7, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mIsChecked:Z

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;

    iget-object v7, v7, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mCheckBoxView:Landroid/widget/RadioButton;

    iget-object v8, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    iget-boolean v8, v8, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mIsChecked:Z

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    :cond_3
    iget-object v7, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    iput-boolean v4, v7, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mIsChecked:Z

    :goto_3
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/2addr v6, p1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blue_light_filter"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, p1

    goto :goto_4

    :cond_5
    move v1, v4

    :goto_4
    if-eqz v1, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onClick() position: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isBlueLightFilterOn: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " currentValue: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePreview"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    if-eq v0, v5, :cond_7

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1426ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.bluelightfilter"

    const-string v6, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v5, 0x16

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    iget-object v2, v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mDBValue:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/NewModePreview;->setScreenMode(I)V

    const-string/jumbo v3, "screen_mode_setting"

    const-string/jumbo v5, "screen_mode_automatic_setting"

    const/4 v6, 0x4

    if-ne v2, v6, :cond_6

    sget-object v7, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/display/NewModePreview;->mVividContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mVividContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object p1, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->getMetricsCategory()I

    int-to-long p0, v0

    const/16 v0, 0x1079

    const/16 v3, 0x107a

    invoke-static {v0, v3, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "onItemClick setScreenMode : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    new-instance v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
