.class Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;
.super Ljava/lang/Object;
.source "DndAppSelectActivity.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;


# direct methods
.method public static synthetic $r8$lambda$4OSXQERA9ExDdxpDQUQrvHNs6yw(Landroid/widget/CompoundButton;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->lambda$onBindViewHolder$0(Landroid/widget/CompoundButton;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$0(Landroid/widget/CompoundButton;Landroid/view/View;)V
    .locals 0

    .line 541
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 7

    .line 504
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object p2

    .line 505
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmPkgIconLoader(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v3, v5}, Lcom/android/settings/notification/zen/lifestyle/apppicker/PkgIconLoader;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 506
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppLabel()Landroid/widget/TextView;

    move-result-object p2

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 514
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    .line 516
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 520
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmViewModel(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->isAllowlistApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p2, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 523
    invoke-virtual {p2, v4}, Landroid/widget/CompoundButton;->setClickable(Z)V

    const/4 p0, 0x0

    .line 524
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmViewModel(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->getChecked(Ljava/lang/String;)Z

    move-result v0

    .line 527
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 528
    new-instance v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7$1;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7$1;-><init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 538
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 540
    new-instance p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7$$ExternalSyntheticLambda0;-><init>(Landroid/widget/CompoundButton;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
