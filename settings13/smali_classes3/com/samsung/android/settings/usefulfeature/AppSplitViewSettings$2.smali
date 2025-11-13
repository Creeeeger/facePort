.class Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;
.super Ljava/lang/Object;
.source "AppSplitViewSettings.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 2

    .line 282
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 283
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "skipped unexpected package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppSplitViewSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :cond_0
    instance-of p2, p1, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$CustomViewHolder;

    if-nez p2, :cond_3

    instance-of p2, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 289
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    .line 290
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p3

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 292
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2$1;-><init>(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$2;Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;)V

    invoke-virtual {p3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 305
    iget p0, p2, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mState:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 306
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p0

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
