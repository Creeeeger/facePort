.class Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;
.super Ljava/lang/Object;
.source "FlexModeSettings.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 4

    .line 359
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "show_setting_icon"

    if-nez p2, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 360
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "skipped unexpected package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlexModeSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 363
    :cond_0
    instance-of p2, p1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$CustomViewHolder;

    if-nez p2, :cond_5

    instance-of p2, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-eqz p2, :cond_1

    goto/16 :goto_3

    .line 366
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 367
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 368
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lcom/android/settings/R$string;->sec_flex_mode_show_button_in_apps_summary:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 370
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p2

    .line 371
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$1;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$1;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {p2, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 378
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$2;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;)V

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 385
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->access$100(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    .line 386
    :goto_0
    invoke-virtual {p2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 388
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;

    .line 389
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    .line 390
    iget-boolean v3, p2, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mControllable:Z

    if-eqz v3, :cond_4

    .line 391
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 392
    new-instance v3, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$3;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2$3;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;)V

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 402
    iget-boolean p2, p2, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mIsEnabled:Z

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 403
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 406
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 407
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object v0

    iget p2, p2, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mSummaryResId:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 410
    :goto_1
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIconContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 412
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmHighlightRequest(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 413
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    const-string p3, ""

    invoke-static {p2, p3}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fputmHighlightKey(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Ljava/lang/String;)V

    .line 414
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p2, v2}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fputmHighlightRequest(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Z)V

    .line 415
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$mapplyHighlight(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V

    :cond_5
    :goto_3
    return-void
.end method
