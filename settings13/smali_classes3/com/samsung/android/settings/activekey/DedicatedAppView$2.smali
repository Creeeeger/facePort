.class Lcom/samsung/android/settings/activekey/DedicatedAppView$2;
.super Ljava/lang/Object;
.source "DedicatedAppView.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/activekey/DedicatedAppView;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

.field final synthetic val$view:Landroidx/apppickerview/widget/AppPickerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->val$view:Landroidx/apppickerview/widget/AppPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "skipped unexpected package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DedicatedAppView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getRadioButton()Landroid/widget/RadioButton;

    move-result-object p1

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 302
    new-instance v1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;-><init>(Lcom/samsung/android/settings/activekey/DedicatedAppView$2;Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 320
    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p2}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p2}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result p0

    .line 321
    invoke-static {p2, p0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 324
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    return-void
.end method
